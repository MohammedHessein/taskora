import 'dart:async';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/string_extensions.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
    required this.onFormChanged,
  });

  final Function({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required bool isValid,
  })
  onFormChanged;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final StreamController<String?> _firstNameErrorController =
      StreamController<String?>.broadcast();
  final StreamController<String?> _lastNameErrorController =
      StreamController<String?>.broadcast();
  final StreamController<String?> _emailErrorController =
      StreamController<String?>.broadcast();
  final StreamController<String?> _phoneErrorController =
      StreamController<String?>.broadcast();

  String _selectedCountryCode = '+966';

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_validateForm);
    _lastNameController.addListener(_validateForm);
    _emailController.addListener(_validateForm);
    _phoneController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _firstNameErrorController.close();
    _lastNameErrorController.close();
    _emailErrorController.close();
    _phoneErrorController.close();
    super.dispose();
  }

  void _validateForm() {
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();
    final email = _emailController.text.trim();
    final phone = _phoneController.text.trim();

    // Validate first name
    if (firstName.isEmpty) {
      _firstNameErrorController.add('First name is required');
    } else if (firstName.length < 2) {
      _firstNameErrorController.add('First name must be at least 2 characters');
    } else {
      _firstNameErrorController.add(null);
    }

    // Validate last name
    if (lastName.isEmpty) {
      _lastNameErrorController.add('Last name is required');
    } else if (lastName.length < 2) {
      _lastNameErrorController.add('Last name must be at least 2 characters');
    } else {
      _lastNameErrorController.add(null);
    }

    // Validate email
    if (email.isEmpty) {
      _emailErrorController.add('Email is required');
    } else if (!email.isValidEmail()) {
      _emailErrorController.add('Please enter a valid email address');
    } else {
      _emailErrorController.add(null);
    }

    // Validate phone
    if (phone.isEmpty) {
      _phoneErrorController.add('Phone number is required');
    } else if (!phone.isValidPhone()) {
      _phoneErrorController.add('Please enter a valid phone number');
    } else {
      _phoneErrorController.add(null);
    }

    // Check if form is valid
    final isValid =
        firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        email.isValidEmail() &&
        phone.isValidPhone() &&
        firstName.length >= 2 &&
        lastName.length >= 2;

    widget.onFormChanged(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: '$_selectedCountryCode$phone',
      isValid: isValid,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          context.tr.register_with_application,
          style: CustomTextStyle.kTextStyleF24.copyWith(
            fontWeight: Dimensions.w700Bold,
          ),
        ),
        hGap30,
        CustomFormField(
          controller: _firstNameController,
          stream: _firstNameErrorController.stream,
          onChanged: (value) => _validateForm(),
          label: 'First Name',
          keyboardType: TextInputType.name,
          nextAction: TextInputAction.next,
        ),
        hGap15,
        CustomFormField(
          controller: _lastNameController,
          stream: _lastNameErrorController.stream,
          onChanged: (value) => _validateForm(),
          label: 'Last Name',
          keyboardType: TextInputType.name,
          nextAction: TextInputAction.next,
        ),
        hGap15,
        CustomFormField(
          controller: _emailController,
          stream: _emailErrorController.stream,
          onChanged: (value) => _validateForm(),
          label: context.tr.email,
          keyboardType: TextInputType.emailAddress,
          nextAction: TextInputAction.next,
        ),
        hGap15,
        CustomFormField(
          controller: _phoneController,
          stream: _phoneErrorController.stream,
          onChanged: (value) => _validateForm(),
          label: context.tr.pleaseEnterYourMobileNumberToReceiveActivationCode,
          preIcon: CountryCodePicker(
            initialSelection: 'SA',
            headerTextStyle: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.bold,
            ),
            favorite: const ['966', 'SA'],
            onChanged: (code) {
              _selectedCountryCode = code.dialCode ?? '+966';
              _validateForm();
            },
            onInit: (code) {
              _selectedCountryCode = code?.dialCode ?? '+966';
            },
            textStyle: CustomTextStyle.kTextStyleF10,
          ),
          keyboardType: TextInputType.phone,
          nextAction: TextInputAction.done,
        ),
        hGap15,
      ],
    );
  }
}
