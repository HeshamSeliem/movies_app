import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});
  static const String routeName = "createAccount";
  TextEditingController nameController = TextEditingController();
  TextEditingController emaillController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        title: Text(
          "Register",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: const Color(0xffF6BD00), fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  "assets/images/splash3x (3).png",
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ]),
             
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is Required";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  hintText: "Name",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                       borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Color(0xffF6BD00))
                          ),
                  errorStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "email is Required";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  hintText: "Email",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                       borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              // third field
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "password is Required";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock_clock_sharp,
                    color: Colors.white,
                  ),
                   suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    size: 30,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                       borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Color(0xffF6BD00))
                          ),
                  errorStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //fourth field 
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "rePassword is Required";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  hintText: "rePassword",
                  prefixIcon: const Icon(
                    Icons.lock_clock_sharp,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                       borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Color(0xffF6BD00))
                          ),
                  errorStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //number field
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "phone is Required";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  hintText: "phone Number",
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                       borderSide:const BorderSide(
                      color: Color(0xffF6BD00)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          const BorderSide(color: Color(0xffF6BD00))
                          ),
                  errorStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: const Color(
                          0xffF6BD00), // Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Text(
                    "Create Account",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: const Color(0xff282A28)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ? ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CreateAccount.routeName);
                        },
                        child: Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: const Color(0xffF6BD00)),
                        ))
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
