module Admin

  class ResourceController < AdminController

    responders :flash, :collection

    respond_to :html

  end

end
