import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/profile_registration/provider.dart';

class ProfileRegistrationScreen extends ConsumerStatefulWidget {
  const ProfileRegistrationScreen({super.key});

  @override
  ConsumerState<ProfileRegistrationScreen> createState() => _ProfileRegistrationScreenState();
}

class _ProfileRegistrationScreenState extends ConsumerState<ProfileRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _currentStateController = TextEditingController();
  final _currentLgaController = TextEditingController();
  final _currentAddressController = TextEditingController();
  final _permanentStateController = TextEditingController();
  final _permanentLgaController = TextEditingController();
  final _permanentAddressController = TextEditingController();

  final List<String> _countries = ['Select Country', 'United States', 'Nigeria', 'United Kingdom'];

  @override
  void initState() {
    super.initState();
    // Initialize controllers if needed or sync them
  }

  @override
  Widget build(BuildContext context) {
    final viewModelState = ref.watch(profileRegistrationViewModelProvider);
    final viewModel = ref.read(profileRegistrationViewModelProvider.notifier);

    // Sync controllers if sameAsCurrent is toggled
    if (viewModelState.sameAsCurrent) {
      _permanentStateController.text = _currentStateController.text;
      _permanentLgaController.text = _currentLgaController.text;
      _permanentAddressController.text = _currentAddressController.text;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Register'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Profile Picture Section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 48,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.photo_camera,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Personal Info',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Join our pre-order & pickup community',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // Personal Info Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          onChanged: viewModel.setEmail,
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'email@example.com',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const Divider(),
                        TextFormField(
                          controller: _phoneController,
                          onChanged: viewModel.setPhone,
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            hintText: '+1 (555) 000-0000',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Current Address Section
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Current Address',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          value: viewModelState.currentCountry,
                          decoration: const InputDecoration(
                            labelText: 'Country',
                            border: InputBorder.none,
                          ),
                          items: _countries.map((country) {
                            return DropdownMenuItem(
                              value: country,
                              child: Text(country),
                            );
                          }).toList(),
                          onChanged: viewModel.setCurrentCountry,
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _currentStateController,
                                onChanged: viewModel.setCurrentState,
                                decoration: const InputDecoration(
                                  labelText: 'State',
                                  hintText: 'Lagos',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: TextFormField(
                                controller: _currentLgaController,
                                onChanged: viewModel.setCurrentLga,
                                decoration: const InputDecoration(
                                  labelText: 'LGA',
                                  hintText: 'Ikeja',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        TextFormField(
                          controller: _currentAddressController,
                          onChanged: viewModel.setCurrentAddress,
                          decoration: const InputDecoration(
                            labelText: 'Full Address',
                            hintText: '123 Street Name, Area',
                            border: InputBorder.none,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Permanent Address Section
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Permanent Address',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Same as Current',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Switch(
                          value: viewModelState.sameAsCurrent,
                          onChanged: viewModel.setSameAsCurrent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          value: viewModelState.permanentCountry,
                          decoration: const InputDecoration(
                            labelText: 'Country',
                            border: InputBorder.none,
                          ),
                          items: _countries.map((country) {
                            return DropdownMenuItem(
                              value: country,
                              child: Text(country),
                            );
                          }).toList(),
                          onChanged: viewModelState.sameAsCurrent ? null : viewModel.setPermanentCountry,
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _permanentStateController,
                                onChanged: viewModel.setPermanentState,
                                decoration: const InputDecoration(
                                  labelText: 'State',
                                  hintText: 'Oyo',
                                  border: InputBorder.none,
                                ),
                                enabled: !viewModelState.sameAsCurrent,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: TextFormField(
                                controller: _permanentLgaController,
                                onChanged: viewModel.setPermanentLga,
                                decoration: const InputDecoration(
                                  labelText: 'LGA',
                                  hintText: 'Ibadan',
                                  border: InputBorder.none,
                                ),
                                enabled: !viewModelState.sameAsCurrent,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        TextFormField(
                          controller: _permanentAddressController,
                          onChanged: viewModel.setPermanentAddress,
                          decoration: const InputDecoration(
                            labelText: 'Full Address',
                            hintText: 'Permanent Street Address',
                            border: InputBorder.none,
                          ),
                          maxLines: 2,
                          enabled: !viewModelState.sameAsCurrent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Submit Button
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            viewModel.submit();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Registration submitted')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Submit Registration',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'By submitting, you agree to our Terms of Service and Privacy Policy.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _currentStateController.dispose();
    _currentLgaController.dispose();
    _currentAddressController.dispose();
    _permanentStateController.dispose();
    _permanentLgaController.dispose();
    _permanentAddressController.dispose();
    super.dispose();
  }
}