require_relative 'countries'

class Handler < EM::Connection
  def receive_data(data)
    send_data Countries.get_name_by_code(data)
  end
end