$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QSourceLocation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD column
   METHOD isNull
   METHOD line
   METHOD setColumn
   METHOD setLine
   METHOD setUri
   METHOD uri

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSourceLocation ()
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW1 )
{
  QSourceLocation * o = new QSourceLocation ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSourceLocation ( const QSourceLocation & other )
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW2 )
{
  QSourceLocation * o = new QSourceLocation ( *PQSOURCELOCATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW3 )
{
  QSourceLocation * o = new QSourceLocation ( *PQURL(1), OPINT(2,-1), OPINT(3,-1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QSourceLocation ()
//[2]QSourceLocation ( const QSourceLocation & other )
//[3]QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )

HB_FUNC_STATIC( QSOURCELOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSOURCELOCATION(1) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISQURL(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qint64 column () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_COLUMN )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->column () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_ISNULL )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
qint64 line () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_LINE )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->line () );
  }
}


/*
void setColumn ( qint64 newColumn )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETCOLUMN )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumn ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLine ( qint64 newLine )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETLINE )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLine ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUri ( const QUrl & newUri )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETURI )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUri ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl uri () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_URI )
{
  QSourceLocation * obj = (QSourceLocation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->uri () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



$extraMethods

#pragma ENDDUMP
