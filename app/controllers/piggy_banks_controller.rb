class PiggyBanksController < ApplicationController
  def create
    piggy_bank = PiggyBank.new(piggy_bank_params)
    piggy_bank.user = current_user
    respond_to do |format|
      if piggy_bank.save
        format.json { render json: piggy_bank }
      else
        format.json { render json: piggy_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    current_user.piggy_banks.first.destroy
    respond_to do |format|
      format.js {}
    end 
  end

  def destroy_all
    current_user.piggy_banks.destroy_all
    # respond_with(@item)
    respond_to do |format|
      format.js {}
    end 
  end

  def piggy_bank_params
    params.require(:piggy_bank).permit(:location, :user_id)
  end
end
