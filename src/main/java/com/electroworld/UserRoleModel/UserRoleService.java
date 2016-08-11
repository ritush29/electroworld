package com.electroworld.UserRoleModel;

import java.util.List;

public interface UserRoleService
{
	public void insertUserRole(UserRole i);
	public void deleteUserRole(int i);
	public void updateUserRole(UserRole i);
	public UserRole getUserRole(int i);
    public List<UserRole> getAllUserRoles();
    public void generateUserRoles();
}