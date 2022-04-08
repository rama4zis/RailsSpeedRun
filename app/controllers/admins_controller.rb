class AdminsController < ApplicationController

    def signin
        @admin = Admin.find_by(username: params[:username], password: params[:password])
        if @admin
            session[:admin_id] = @admin.id
            flash[:success] = "Welcome #{@admin.username}"
            redirect_to '/'
        else
            flash[:danger] = "Invalid username or password"
            redirect_to '/admin/login'
        end
    end
    
    
    def logout
        reset_session
        redirect_to '/'
    end

    def input_nilai

    end
    
    def insert_nilai
        @nilai = Evaluation.new( user_id: params[:user_id], guru_id: @current_admin.id, date: params[:date], semester: params[:semester], mapel_code: params[:mapel_code], jenis: params[:jenis], nilai: params[:nilai] )
        if @nilai.save
            flash[:success] = "Nilai berhasil diinput"
            redirect_to '/admin/input-nilai'
        else
            flash[:danger] = "Nilai gagal diinput"
            redirect_to '/admin/input-nilai'
        end
    end

    def edit_nilai
        @evaluation = Evaluation.find(params[:id])
    end

    def update_nilai
        @evaluation = Evaluation.find(params[:id])
        @evaluation.update( user_id: params[:user_id], guru_id: @current_admin.id, date: params[:date], semester: params[:semester], mapel_code: params[:mapel_code], jenis: params[:jenis], nilai: params[:nilai] )
        flash[:success] = "Nilai berhasil diupdate"
        redirect_to user_edit_path(id: @evaluation.user_id)
    end

    def delete_nilai
        @evaluation = Evaluation.find(params[:id])
        @evaluation.destroy
        flash[:success] = "Nilai berhasil dihapus"
        redirect_to user_edit_path(id: @evaluation.user_id)
    end


end
