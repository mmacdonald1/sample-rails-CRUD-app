# PAO- Pet Adoptions Owners

rails new pao
cd pao
rails g resource Pet name:string species:string age:string --no-test-framework

rails g resource Owner name:string --no-test-framework

Join Table Adoptions
___

seeds.rb
jerry = Pet.create(name:'Jerry', species:'plant', age:1)
melanie = Owner.create(name:'Melanie')
melanie.pets << jerry

rails db:create
rails db:migrate
rails db:seed

rails c
Pet.all
Pet.find_by(name:'Jerry').owners

controllers
index
- setting up index route and index.erb
- How does this work? link_to owner.name, owner

show
- setup before_action and strong params
- What does this do? before_action :find_pet, only: [:show]

private
  def find_pet
    @pet = Pet.find(params[:id])
  end

new
  - new route @pet = Pet.new

  create
  - What are strong params
    - private pet_params
    def pet_params
      params.require(:owner).permit(:name, :species, :age, owner_ids:[])
    end

    - @pet = Pet.new(pet_params)
      @pet.save
      redirect_to pet_path(@pet)

    - in the new.erb
      - create form_for
      -collection_check_boxes

    - add link to get to new form
    <%= link_to "New Pet", new_pet_path %>

edit

  -edit route is the before action
  -update route is @pet.update(pet_params)


delete

def destroy
  Pet.find(params[:id]).destroy
  redirect_to pets_path
end

<%= link_to "Delete", @pet, method: :delete, data: { confirm: "Really?" } %>


Validations
