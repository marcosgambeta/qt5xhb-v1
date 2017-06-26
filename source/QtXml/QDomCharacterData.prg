/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDomCharacterData INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD appendData
   METHOD data
   METHOD deleteData
   METHOD insertData
   METHOD length
   METHOD nodeType
   METHOD replaceData
   METHOD setData
   METHOD substringData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCharacterData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomCharacterData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomCharacterData>
#endif

/*
QDomCharacterData ()
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW1 )
{
  QDomCharacterData * o = new QDomCharacterData ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomCharacterData ( const QDomCharacterData & x )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW2 )
{
  QDomCharacterData * o = new QDomCharacterData ( *PQDOMCHARACTERDATA(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomCharacterData ()
//[2]QDomCharacterData ( const QDomCharacterData & x )

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMCHARACTERDATA_DELETE )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendData ( const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_APPENDDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->appendData ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString data () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->data () );
  }
}


/*
void deleteData ( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DELETEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    obj->deleteData ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertData ( unsigned long offset, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_INSERTDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    obj->insertData ( par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
uint length () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_LENGTH )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length () );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NODETYPE )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}


/*
void replaceData ( unsigned long offset, unsigned long count, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_REPLACEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    obj->replaceData ( par1, par2, PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const QString & v )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SETDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setData ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString substringData ( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SUBSTRINGDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    RQSTRING( obj->substringData ( par1, par2 ) );
  }
}



#pragma ENDDUMP
