$header

#include "hbclass.ch"

CLASS QDnsLookup INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD error
   METHOD errorString
   METHOD isFinished
   METHOD name
   METHOD setName
   METHOD setType
   METHOD type
   METHOD abort
   METHOD lookup

   METHOD onFinished
   METHOD onNameChanged
   METHOD onTypeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDnsLookup(QObject * parent = 0)
*/
HB_FUNC_STATIC( QDNSLOOKUP_NEW1 )
{
  QDnsLookup * o = new QDnsLookup ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsLookup(Type type, const QString & name, QObject * parent = 0)
*/
HB_FUNC_STATIC( QDNSLOOKUP_NEW2 )
{
  QDnsLookup * o = new QDnsLookup ( (QDnsLookup::Type) hb_parni(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsLookup(QObject * parent = 0)
//[2]QDnsLookup(Type type, const QString & name, QObject * parent = 0)

HB_FUNC_STATIC( QDNSLOOKUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Error error() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERROR )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERRORSTRING )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}



/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ISFINISHED )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}



/*
QString name() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_NAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}





/*
void setName(const QString & name)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETNAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType(QDnsLookup::Type)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETTYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setType ( (QDnsLookup::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
Type type() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_TYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
void abort()
*/
HB_FUNC_STATIC( QDNSLOOKUP_ABORT )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lookup()
*/
HB_FUNC_STATIC( QDNSLOOKUP_LOOKUP )
{
  QDnsLookup * obj = (QDnsLookup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->lookup ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
