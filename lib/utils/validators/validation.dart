class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email Required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid Email Address ';
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password Required';
    }
    if(value.length < 6){
      return 'Password must be at least 6 characters ';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?:"{}|<>'))){
      return 'Password must contain at Least One Special Character';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone Number Required';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid Phone Number format (10 Digits Required)';
    }
    return null;
  }
}