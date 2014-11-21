class AddStudentProperties < ActiveRecord::Migration
  def change
    fields = {
        :last_name => "string",
        :street => "string",
        :zip => "string",
        :city => "integer",
        :phone => "string"
    }
    fields.each do |field, type|
      add_column :students, field, type
    end
  end
end
