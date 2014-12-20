module Admin

  class VersionsController < ResourceController

    def revert
      @version = PaperTrail::Version.find(params[:id])
      if @version.reify
        @version.reify.save!
      else
        @version.item.destroy
      end
      is_redo = params[:redo] == 'true'
      button_name = is_redo ? 'Undo' : 'Redo'
      revert_path = revert_admin_version_path(@version.next, redo: !is_redo)
      link = view_context.button_to(button_name, revert_path, method: :post)
      action = is_redo ? 'Redid' : 'Undid'
      redirect_to :back, notice: "#{action} #{@version.event}. #{link}"
    end

  end

end
