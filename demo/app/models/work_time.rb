class WorkTime < ApplicationRecord
  belongs_to :employee

  def self.search(start_date,end_date,username)
    if start_date && end_date
      where("date between '#{start_date}' and '#{end_date}'").order(:date, employee_id: :asc)
    end

    wt = WorkTime.arel_table
    em = Employee.arel_table

    stmt = wt.project([
        wt[:date],
        wt[:timein],
        wt[:timeout],
        em[:name]]
        ).join(em, Arel::Nodes::OuterJoin ).on(wt[:employee_id].eq em[:id])
        .where(em[:username].eq username)

    find_by_sql stmt.to_sql

  end

  def self.searchbydateandemployee(date,employee_id)
    if date && employee_id
      where("date='#{date}' and employee_id='#{employee_id}'")
    end
  end

  def self.to_csv(options={})
    ::CSV.generate(options) do |csv|
      csv << column_names
      all.each do |wt|
        csv << wt.attributes.values_at(*column_names)
      end
    end
  end

end
