
using System;

namespace GpiERGenNHibernate.EN.GpiER
{
public partial class UsuarioEN
{
/**
 *
 */

private string email;

/**
 *
 */

private string nick;

/**
 *
 */

private string password;

/**
 *
 */

private System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ClienteEN> cliente;

/**
 *
 */

private System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ProveedorEN> proveedor;





public virtual string Email {
        get { return email; } set { email = value;  }
}


public virtual string Nick {
        get { return nick; } set { nick = value;  }
}


public virtual string Password {
        get { return password; } set { password = value;  }
}


public virtual System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ClienteEN> Cliente {
        get { return cliente; } set { cliente = value;  }
}


public virtual System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ProveedorEN> Proveedor {
        get { return proveedor; } set { proveedor = value;  }
}





public UsuarioEN()
{
        cliente = new System.Collections.Generic.List<GpiERGenNHibernate.EN.GpiER.ClienteEN>();
        proveedor = new System.Collections.Generic.List<GpiERGenNHibernate.EN.GpiER.ProveedorEN>();
}



public UsuarioEN(string email, string nick, string password, System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ClienteEN> cliente, System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ProveedorEN> proveedor)
{
        this.init (email, nick, password, cliente, proveedor);
}


public UsuarioEN(UsuarioEN usuario)
{
        this.init (usuario.Email, usuario.Nick, usuario.Password, usuario.Cliente, usuario.Proveedor);
}

private void init (string email, string nick, string password, System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ClienteEN> cliente, System.Collections.Generic.IList<GpiERGenNHibernate.EN.GpiER.ProveedorEN> proveedor)
{
        this.Email = email;


        this.Nick = nick;

        this.Password = password;

        this.Cliente = cliente;

        this.Proveedor = proveedor;
}

public override bool Equals (object obj)
{
        if (obj == null)
                return false;
        UsuarioEN t = obj as UsuarioEN;
        if (t == null)
                return false;
        if (Email.Equals (t.Email))
                return true;
        else
                return false;
}

public override int GetHashCode ()
{
        int hash = 13;

        hash += this.Email.GetHashCode ();
        return hash;
}
}
}