module ApplicationHelper

  def menu_items
    [{
      name: 'Invoices',
      path: invoices_path,
    }, {
      name: 'Employees',
      path: employees_path,
    }, {
      name: 'Companies',
      path: companies_path,
    },].map do |item|
      {
        name: item[:name],
        path: item[:path],
        active: current_page?(item[:path])
      }
    end
  end

end
