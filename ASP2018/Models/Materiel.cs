//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASP2018.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Materiel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Materiel()
        {
            this.Emprunters = new HashSet<Emprunter>();
        }
    
        public int idMat { get; set; }
        public string libelle { get; set; }
        public Nullable<decimal> prixEmprunt { get; set; }
        public Nullable<int> idCat { get; set; }
    
        public virtual Categorie Categorie { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Emprunter> Emprunters { get; set; }
    }
}
