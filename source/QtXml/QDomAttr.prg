/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDOMELEMENT
#endif

CLASS QDomAttr INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomAttr
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD nodeType
   METHOD ownerElement
   METHOD setValue
   METHOD specified
   METHOD value
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomAttr
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDomAttr>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDomAttr>
#endif
#endif

/*
QDomAttr ()
*/
HB_FUNC_STATIC( QDOMATTR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomAttr * o = new QDomAttr (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomAttr *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QDomAttr ( const QDomAttr & x )
*/
HB_FUNC_STATIC( QDOMATTR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomAttr * par1 = (QDomAttr *) _qt5xhb_itemGetPtr(1);
  QDomAttr * o = new QDomAttr ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomAttr *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QDomAttr ()
//[2]QDomAttr ( const QDomAttr & x )

HB_FUNC_STATIC( QDOMATTR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMATTR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMATTR(1) )
  {
    HB_FUNC_EXEC( QDOMATTR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMATTR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QString name () const
*/
HB_FUNC_STATIC( QDOMATTR_NAME )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMATTR_NODETYPE )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}


/*
QDomElement ownerElement () const
*/
HB_FUNC_STATIC( QDOMATTR_OWNERELEMENT )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->ownerElement (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
void setValue ( const QString & v )
*/
HB_FUNC_STATIC( QDOMATTR_SETVALUE )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool specified () const
*/
HB_FUNC_STATIC( QDOMATTR_SPECIFIED )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->specified (  ) );
  }
}


/*
QString value () const
*/
HB_FUNC_STATIC( QDOMATTR_VALUE )
{
  QDomAttr * obj = (QDomAttr *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->value (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
