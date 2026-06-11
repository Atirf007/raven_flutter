import 'dart:ffi';

class Senha {
  String _nome = "";
  String _email = "";
  String _senha = "";
  bool _newsletter = false;
  bool _notifications = false;
 
 Senha(this._nome, this._email, this._senha, this._newsletter, this._notifications);

 get nome => this._nome;

 set nome( value) => this._nome = value;

  get email => this._email;

 set email( value) => this._email = value;

  get senha => this._senha;

 set senha( value) => this._senha = value;

  get newsletter => this._newsletter;

 set newsletter( value) => this._newsletter = value;

  get notifications => this._notifications;

 set notifications( value) => this._notifications = value;


}
