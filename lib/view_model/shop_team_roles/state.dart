import 'package:flutter/material.dart';

class TeamMember {
  final String name;
  final String role;
  final bool isCurrentUser;

  const TeamMember({
    required this.name,
    required this.role,
    this.isCurrentUser = false,
  });
}

class ShopRole {
  final String title;
  final String description;
  final IconData icon;

  const ShopRole({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class ShopTeamRolesViewModelState {
  final List<TeamMember> teamMembers;
  final List<ShopRole> availableRoles;

  const ShopTeamRolesViewModelState({
    this.teamMembers = const [],
    this.availableRoles = const [],
  });

  ShopTeamRolesViewModelState copyWith({
    List<TeamMember>? teamMembers,
    List<ShopRole>? availableRoles,
  }) {
    return ShopTeamRolesViewModelState(
      teamMembers: teamMembers ?? this.teamMembers,
      availableRoles: availableRoles ?? this.availableRoles,
    );
  }
}
