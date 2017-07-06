$header

#include "hbclass.ch"

CLASS QDomDocumentFragment INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDomDocumentFragment ()
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW1 )
{
  QDomDocumentFragment * o = new QDomDocumentFragment ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomDocumentFragment ( const QDomDocumentFragment & x )
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW2 )
{
  QDomDocumentFragment * o = new QDomDocumentFragment ( *PQDOMDOCUMENTFRAGMENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomDocumentFragment ()
//[2]QDomDocumentFragment ( const QDomDocumentFragment & x )

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTFRAGMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NODETYPE )
{
  QDomDocumentFragment * obj = (QDomDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}

#pragma ENDDUMP
