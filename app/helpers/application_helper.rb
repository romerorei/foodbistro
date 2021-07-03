module ApplicationHelper
    def current_order
      # Utilicé Find by id para evitar posibles errores
    #    @current_order ||= Order.find_by_id(session[:order_id]).presence || Order.new
      if Order.find_by_id(session[:order_id]).nil?
        Order.new
      else
        Order.find_by_id(session[:order_id])
      end
    end
end