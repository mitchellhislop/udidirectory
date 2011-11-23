require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UdidsController do

  # This should return the minimal set of attributes required to create a valid
  # Udid. As you add validations to Udid, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all udids as @udids" do
      udid = Udid.create! valid_attributes
      get :index
      assigns(:udids).should eq([udid])
    end
  end

  describe "GET show" do
    it "assigns the requested udid as @udid" do
      udid = Udid.create! valid_attributes
      get :show, :id => udid.id
      assigns(:udid).should eq(udid)
    end
  end

  describe "GET new" do
    it "assigns a new udid as @udid" do
      get :new
      assigns(:udid).should be_a_new(Udid)
    end
  end

  describe "GET edit" do
    it "assigns the requested udid as @udid" do
      udid = Udid.create! valid_attributes
      get :edit, :id => udid.id
      assigns(:udid).should eq(udid)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Udid" do
        expect {
          post :create, :udid => valid_attributes
        }.to change(Udid, :count).by(1)
      end

      it "assigns a newly created udid as @udid" do
        post :create, :udid => valid_attributes
        assigns(:udid).should be_a(Udid)
        assigns(:udid).should be_persisted
      end

      it "redirects to the created udid" do
        post :create, :udid => valid_attributes
        response.should redirect_to(Udid.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved udid as @udid" do
        # Trigger the behavior that occurs when invalid params are submitted
        Udid.any_instance.stub(:save).and_return(false)
        post :create, :udid => {}
        assigns(:udid).should be_a_new(Udid)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Udid.any_instance.stub(:save).and_return(false)
        post :create, :udid => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested udid" do
        udid = Udid.create! valid_attributes
        # Assuming there are no other udids in the database, this
        # specifies that the Udid created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Udid.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => udid.id, :udid => {'these' => 'params'}
      end

      it "assigns the requested udid as @udid" do
        udid = Udid.create! valid_attributes
        put :update, :id => udid.id, :udid => valid_attributes
        assigns(:udid).should eq(udid)
      end

      it "redirects to the udid" do
        udid = Udid.create! valid_attributes
        put :update, :id => udid.id, :udid => valid_attributes
        response.should redirect_to(udid)
      end
    end

    describe "with invalid params" do
      it "assigns the udid as @udid" do
        udid = Udid.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Udid.any_instance.stub(:save).and_return(false)
        put :update, :id => udid.id, :udid => {}
        assigns(:udid).should eq(udid)
      end

      it "re-renders the 'edit' template" do
        udid = Udid.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Udid.any_instance.stub(:save).and_return(false)
        put :update, :id => udid.id, :udid => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested udid" do
      udid = Udid.create! valid_attributes
      expect {
        delete :destroy, :id => udid.id
      }.to change(Udid, :count).by(-1)
    end

    it "redirects to the udids list" do
      udid = Udid.create! valid_attributes
      delete :destroy, :id => udid.id
      response.should redirect_to(udids_url)
    end
  end

end
