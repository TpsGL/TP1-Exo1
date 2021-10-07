

class Profile {

  String fullName;
  String imgSrc;
  String twitterAccount;
  String email;

  Profile({required this.fullName, required this.imgSrc, required this.email, required this.twitterAccount});

  String getFullName() {
    return fullName;
  }

  String getImgSrc() {
    return imgSrc;
  }

  String getEmail(){
    return email;
  }

  String getTwitterAccount() {
    return twitterAccount;
  }
}