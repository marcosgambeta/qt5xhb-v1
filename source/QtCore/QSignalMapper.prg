/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   DATA class_id INIT Class_Id_QSignalMapper
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD setMapping1
   METHOD setMapping2
   METHOD setMapping3
   METHOD setMapping4
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping1
   METHOD mapping2
   METHOD mapping3
   METHOD mapping4
   METHOD mapping
   METHOD map1
   METHOD map2
   METHOD map
   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSignalMapper>
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
#include <QSignalMapper>
#endif
#endif

/*
QSignalMapper(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QSignalMapper * o = new QSignalMapper ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSignalMapper *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSIGNALMAPPER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setMapping(QObject *sender, int id)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING1 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->setMapping ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMapping(QObject *sender, const QString &text)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING2 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setMapping ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMapping(QObject *sender, QWidget *widget)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING3 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    obj->setMapping ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMapping(QObject *sender, QObject *object)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING4 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    obj->setMapping ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setMapping(QObject *sender, int id)
//[2]void setMapping(QObject *sender, const QString &text)
//[3]void setMapping(QObject *sender, QWidget *widget)
//[4]void setMapping(QObject *sender, QObject *object)

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeMappings(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_REMOVEMAPPINGS )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->removeMappings ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject *mapping(int id) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING1 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->mapping ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QObject *mapping(const QString &text) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING2 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QObject *mapping(QWidget *widget) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING3 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QObject *mapping(QObject *object) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING4 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


//[1]QObject *mapping(int id) const
//[2]QObject *mapping(const QString &text) const
//[3]QObject *mapping(QWidget *widget) const
//[4]QObject *mapping(QObject *object) const

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING2 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING3 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void map()
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAP1 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->map (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void map(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAP2 )
{
  QSignalMapper * obj = (QSignalMapper *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->map ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void map()
//[2]void map(QObject *sender)

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP
