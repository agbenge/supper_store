import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopTeamRolesViewModel extends _$ShopTeamRolesViewModel {
  @override
  ShopTeamRolesViewModelState build() {
    return const ShopTeamRolesViewModelState(
      teamMembers: [
        TeamMember(name: 'John Doe (You)', role: 'Owner', isCurrentUser: true),
        TeamMember(name: 'Alice Smith', role: 'Manager'),
        TeamMember(name: 'Bob Wilson', role: 'Sales Assistant'),
      ],
      availableRoles: [
        ShopRole(title: 'Owner', description: 'Full access to all shop features and financial settings.', icon: Icons.admin_panel_settings),
        ShopRole(title: 'Manager', description: 'Can manage inventory, staff, and view reports.', icon: Icons.manage_accounts),
        ShopRole(title: 'Sales Assistant', description: 'Can process orders and manage basic inventory.', icon: Icons.point_of_sale),
      ],
    );
  }

  void addMember() {
    // Logic to add member
  }
}
