<?php

use Illuminate\Database\Seeder;
use App\Permission;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		
		// View the Organization index page
        $viewOrganizationIndex = new Permission();
		$viewOrganizationIndex->name			= 'view-organization-index';
		$viewOrganizationIndex->display_name	= 'View Organization Index';
		$viewOrganizationIndex->description		= 'view the index showing all organizations';
		$viewOrganizationIndex->save();
		
		// Add and Modify an Organization
		$viewModifyOrganization = new Permission();
		$viewModifyOrganization->name			= 'view-add-modify-organization';
		$viewModifyOrganization->display_name	= 'View Add and Modify Organization';
		$viewModifyOrganization->description	= 'view add and modify an organization details';
		$viewModifyOrganization->save();
		
		// View the Members of an Organization
		$viewOrganizationMembers = new Permission();
		$viewOrganizationMembers->name			= 'view-organization-members';
		$viewOrganizationMembers->display_name	= 'View Organization Members';
		$viewOrganizationMembers->description	= 'view an organization members';
		$viewOrganizationMembers->save();
		
		// Add and Modify Members of an Organization
		$modifyOrganizationMembers = new Permission();
		$modifyOrganizationMembers->name			= 'modify-organization-members';
		$modifyOrganizationMembers->display_name	= 'Modify Organization Members';
		$modifyOrganizationMembers->description		= 'modify an organization members';
		$modifyOrganizationMembers->save();
		
		// View the Project 13 index page
		$viewProject13Index = new Permission();
		$viewProject13Index->name				= 'view-project13-index';
		$viewProject13Index->display_name		= 'View Project 13 index';
		$viewProject13Index->description		= 'view project 13 index';
		$viewProject13Index->save();
		
		// Add and Modify a Project 13, including its Members but not the Member Evaluations
		$modifyProject13 = new Permission();
		$modifyProject13->name					= 'add-modify-project13';
		$modifyProject13->display_name			= 'Add and Modify Project 13';
		$modifyProject13->description			= 'add and modify a project 13 details, including members but not evaluations';
		$modifyProject13->save();
		
		// View all the details of all Project 13s, including its Members and the Member Evaluations (Gold Hat)
		$viewAllProject13Details = new Permission();
		$viewAllProject13Details->name			= 'view-all-project13-details';
		$viewAllProject13Details->display_name	= 'View All Project 13 Details';
		$viewAllProject13Details->description	= 'view all project 13 details, including members evaluations';
		$viewAllProject13Details->save();
		
		// View the details of a single Project 13, including its Members and the Member Evaluations (White Hat)
		$viewProject13Details = new Permission();
		$viewProject13Details->name				= 'view-project13-details';
		$viewProject13Details->display_name		= 'View A Project 13 Details';
		$viewProject13Details->description		= 'view a single project 13 details, including members evaluations';
		$viewProject13Details->save();
		
		// View only the details of a Blue Hat's branch
		$viewBlueHatBranch = new Permission();
		$viewBlueHatBranch->name				= 'view-blue-hat-branch';
		$viewBlueHatBranch->display_name		= 'View A Blue Hat Branch';
		$viewBlueHatBranch->description			= 'view a blue hat details, including members evaluations';
		$viewBlueHatBranch->save();

    }
}
