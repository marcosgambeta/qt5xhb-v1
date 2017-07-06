$header

#include "hbclass.ch"

CLASS QDomProcessingInstruction INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD nodeType
   METHOD setData
   METHOD target

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDomProcessingInstruction ()
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW1 )
{
  QDomProcessingInstruction * o = new QDomProcessingInstruction ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomProcessingInstruction ( const QDomProcessingInstruction & x )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW2 )
{
  QDomProcessingInstruction * o = new QDomProcessingInstruction ( *PQDOMPROCESSINGINSTRUCTION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomProcessingInstruction ()
//[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString data () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_DATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->data () );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NODETYPE )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}


/*
void setData ( const QString & d )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_SETDATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setData ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString target () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_TARGET )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->target () );
  }
}



#pragma ENDDUMP
