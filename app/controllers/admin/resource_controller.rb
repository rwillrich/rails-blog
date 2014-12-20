module Admin

  class ResourceController < AdminController

    responders :flash, :collection

    respond_to :html

    protected

      def undo_button
        version = resource.versions(true).last
        revert_path = revert_admin_version_path(version)
        view_context.button_to('Undo', revert_path, method: :post)
      end

      def interpolation_options
        if resource.persisted?
          { undo_button: undo_button }
        else
          {}
        end
      end

  end

end
