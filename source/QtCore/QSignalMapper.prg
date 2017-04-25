/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   //DATA class_id INIT Class_Id_QSignalMapper
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping
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
#include <QSignalMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSignalMapper>
#endif

/*
QSignalMapper(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QSignalMapper * o = new QSignalMapper ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIGNALMAPPER_DELETE )
{
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
}

/*
void setMapping(QObject *sender, int id)
*/
void QSignalMapper_setMapping1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    obj->setMapping ( par1, (int) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, const QString &text)
*/
void QSignalMapper_setMapping2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setMapping ( par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QWidget *widget)
*/
void QSignalMapper_setMapping3 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->setMapping ( par1, par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QObject *object)
*/
void QSignalMapper_setMapping4 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
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
    QSignalMapper_setMapping1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QSignalMapper_setMapping2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    QSignalMapper_setMapping3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    QSignalMapper_setMapping4();
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
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
      obj->removeMappings ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject *mapping(int id) const
*/
void QSignalMapper_mapping1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->mapping ( (int) hb_parni(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(const QString &text) const
*/
void QSignalMapper_mapping2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QWidget *widget) const
*/
void QSignalMapper_mapping3 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QObject *object) const
*/
void QSignalMapper_mapping4 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QObject * ptr = obj->mapping ( par1 );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
    QSignalMapper_mapping1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSignalMapper_mapping2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QSignalMapper_mapping3();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_mapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void map()
*/
void QSignalMapper_map1 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->map (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void map(QObject *sender)
*/
void QSignalMapper_map2 ()
{
  QSignalMapper * obj = (QSignalMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
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
    QSignalMapper_map1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_map2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
