class Ability
  include CanCan::Ability

  def initialize(user)  
   
   # CUSTOM ################################################################################

	# REMOVES ABILITY FOR NON-MEMBERS TO VIEW APP
		cannot [:read, :manage], :all if user.role_id != 4
		cannot [:read, :manage], :all if user.role_id != 3
		cannot [:read, :manage], :all if user.role_id != 2
		cannot [:read, :manage], :all if user.role_id != 1

	# AGENT = 1
	    #can :manage, :all if user.role_id == 1
	    can :read, :all if user.role_id == 1
	    cannot [:read, :modify], User if user.role_id == 1
	    can [:read, :manage], Client if user.role_id == 1
	    cannot [:read, :modify], Category if user.role_id == 1

	# PICKUP STAFF = 2
	    can :manage, [Product, Event] if user.role_id == 2
	    can :read, :all if user.role_id == 2
	    cannot [:read, :modify], User if user.role_id == 2
	    cannot [:read, :modify], Client if user.role_id == 2
	    cannot [:read, :modify], Category if user.role_id == 2

	# WAREHOUSE STAFF = 3
	    can [:read, :manage], Product if user.role_id == 3
	    cannot [:read, :modify], User if user.role_id == 3
	    can :read, :all if user.role_id == 3
	    cannot [:read, :modify], Client if user.role_id == 3
	    cannot [:read, :modify], Category if user.role_id == 3

    # ADMIN = 4
	    can :manage, :all if user.role_id == 4
	    can :read, :all if user.role_id == 4

    # registrated = 5
	    cannot :manage, :all if user.role_id == 5
	    can :read, :all if user.role_id == 5

	
	#######################################################################################

   # @user = user || User.new # for guest
   # @user.roles.each { |role| send(role) }

    #if @user.roles.size == 0
   #   can :read, Home #for guest without roles
   # end


    # Define abilities for the passed in user here. For example:
    #
	#      user ||= User.new # guest user (not logged in)
	#       if user.admin?
	#         can :manage, :all
	#       else
	#       	 can :read, :all
	#      end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    
    
	#  #can :manage, event if user.role == "pickup staff"
	#  #can :manage, product if user.role == "pickup staff"
	#  #can :manage, product if user.role == "warehouse staff"
	#  #can :read, event if user.role == "warehouse staff"


    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
  
end
