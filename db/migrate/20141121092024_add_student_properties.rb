class AddStudentProperties < ActiveRecord::Migration
  def change
    fields = {
        :last_name => "string",
        :street => "string",
        :zip => "integer",
        :city => "string",
        :phone => "string"
    }
    fields.each do |field, type|
      add_column :students, field, type
    end
  end
end
