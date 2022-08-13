require 'fox16'
require '../controller/controller'
include Fox

class Main_window < FXMainWindow
    def initialize app
      super(app, "Главное окно", :width => 600, :height => 200)
      @controller = Controller.new
      list_duty = self.get_list_duty @controller
      menubar = FXMenuBar.new(self,:opts => LAYOUT_SIDE_TOP|LAYOUT_FILL_X )
      FXHorizontalSeparator.new(self, :opts =>LAYOUT_SIDE_TOP|LAYOUT_FILL_X|SEPARATOR_GROOVE)
      contetnt = FXVerticalFrame.new(self,:opts => LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)
      frame = FXVerticalFrame.new(contetnt,
        FRAME_SUNKEN|FRAME_THICK|LAYOUT_FILL_X|LAYOUT_FILL_Y, :padding => 0)
      @table = FXTable.new(frame, :opts => LAYOUT_FILL|TABLE_ROW_SIZABLE|TABLE_COL_SIZABLE )
      @table.setTableSize(list_duty.size, 3)

      filemenu = FXMenuPane.new(self)
      FXMenuCommand.new(filemenu, "&Выйти\tCtl-Q", nil, getApp(), FXApp::ID_QUIT)
      FXMenuTitle.new(menubar, "&Дополнительно", nil, filemenu)
      FXMenuCommand.new(filemenu, "Delete Row\tCtl-R").connect(SEL_COMMAND, method(:delete_duty))


      j = 0
      for i in list_duty
        @table.setColumnText(0, 'Название отдела')
        @table.setColumnText(1, 'Количество столов')
        @table.setColumnText(2, 'Количество стульев')
        @table.setRowText(j, (j + 1).to_s)
        @table.setItemText(j, 0, i.name)
        @table.setItemText(j, 1, i.number.to_s)
        @table.setItemText(j, 2, i.number_ch.to_s)
        j += 1
      end

    end

    def create
      super
      show PLACEMENT_SCREEN
    end

    def get_list_duty controller
      controller.get_list_duty
    end

    def delete_duty (sender, sel, ptr)
      form = FXDialogBox.new(self, "Удалить запись")

      # Set up its contents
      frame = FXHorizontalFrame.new(form, LAYOUT_FILL_X|LAYOUT_FILL_Y)
      FXLabel.new(frame, "Удалить выбранную запись?", nil, LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)

      FXButton.new(frame, "Cancel", nil, form, FXDialogBox::ID_CANCEL,
        FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)
      FXButton.new(frame, "  OK  ", nil, form, FXDialogBox::ID_ACCEPT,
        FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)

      @controller.delete_duty(@table.currentRow)

      @table.removeRows(@table.currentRow)

    end

end

if __FILE__ == $0
  FXApp.new do |app|
    Main_window.new app
    app.create
    app.run
  end
end
