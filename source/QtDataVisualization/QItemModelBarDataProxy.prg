/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QREGEXP
#endif

CLASS QItemModelBarDataProxy INHERIT QBarDataProxy

   METHOD new
   METHOD delete
   METHOD itemModel
   METHOD setItemModel
   METHOD rowRole
   METHOD setRowRole
   METHOD columnRole
   METHOD setColumnRole
   METHOD valueRole
   METHOD setValueRole
   METHOD rotationRole
   METHOD setRotationRole
   METHOD rowCategories
   METHOD setRowCategories
   METHOD columnCategories
   METHOD setColumnCategories
   METHOD useModelCategories
   METHOD setUseModelCategories
   METHOD autoRowCategories
   METHOD setAutoRowCategories
   METHOD autoColumnCategories
   METHOD setAutoColumnCategories
   METHOD rowRolePattern
   METHOD setRowRolePattern
   METHOD columnRolePattern
   METHOD setColumnRolePattern
   METHOD valueRolePattern
   METHOD setValueRolePattern
   METHOD rotationRolePattern
   METHOD setRotationRolePattern
   METHOD rowRoleReplace
   METHOD setRowRoleReplace
   METHOD columnRoleReplace
   METHOD setColumnRoleReplace
   METHOD valueRoleReplace
   METHOD setValueRoleReplace
   METHOD rotationRoleReplace
   METHOD setRotationRoleReplace
   METHOD multiMatchBehavior
   METHOD setMultiMatchBehavior
   METHOD remap
   METHOD rowCategoryIndex
   METHOD columnCategoryIndex

   METHOD onAutoColumnCategoriesChanged
   METHOD onAutoRowCategoriesChanged
   METHOD onColumnCategoriesChanged
   METHOD onColumnRoleChanged
   METHOD onColumnRolePatternChanged
   METHOD onColumnRoleReplaceChanged
   METHOD onItemModelChanged
   METHOD onMultiMatchBehaviorChanged
   METHOD onRotationRoleChanged
   METHOD onRotationRolePatternChanged
   METHOD onRotationRoleReplaceChanged
   METHOD onRowCategoriesChanged
   METHOD onRowRoleChanged
   METHOD onRowRolePatternChanged
   METHOD onRowRoleReplaceChanged
   METHOD onUseModelCategoriesChanged
   METHOD onValueRoleChanged
   METHOD onValueRolePatternChanged
   METHOD onValueRoleReplaceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QItemModelBarDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QItemModelBarDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QItemModelBarDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QItemModelBarDataProxy(QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new1()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( OPQOBJECT(1,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new2()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new3()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), OPQOBJECT(3,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new4()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), OPQOBJECT(5,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new5()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), OPQOBJECT(6,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new6()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRINGLIST(6), OPQOBJECT(7,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
*/
void QItemModelBarDataProxy_new7()
{
  QItemModelBarDataProxy * obj = new QItemModelBarDataProxy( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRINGLIST(6), PQSTRINGLIST(7), OPQOBJECT(8,Q_NULLPTR) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]explicit QItemModelBarDataProxy(QObject *parent = Q_NULLPTR)
[2]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
[3]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = Q_NULLPTR)
[4]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = Q_NULLPTR)
[5]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
[6]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
[7]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
*/

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelBarDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelBarDataProxy_new2();
  }
  else if( ISBETWEEN(2,3) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QItemModelBarDataProxy_new3();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelBarDataProxy_new4();
  }
  else if( ISBETWEEN(5,6) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QItemModelBarDataProxy_new5();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISARRAY(5) && ISARRAY(6) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QItemModelBarDataProxy_new6();
  }
  else if( ISBETWEEN(7,8) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && ISARRAY(6) && ISARRAY(7) && (ISQOBJECT(8)||ISNIL(8)) )
  {
    QItemModelBarDataProxy_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QItemModelBarDataProxy()
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_DELETE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
QAbstractItemModel *itemModel() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ITEMMODEL )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->itemModel();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setItemModel(QAbstractItemModel *itemModel)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETITEMMODEL )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setItemModel( PQABSTRACTITEMMODEL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rowRole() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROWROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rowRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRowRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROWROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRowRole( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString columnRole() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_COLUMNROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->columnRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColumnRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETCOLUMNROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setColumnRole( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString valueRole() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_VALUEROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->valueRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setValueRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETVALUEROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setValueRole( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rotationRole() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROTATIONROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rotationRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRotationRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROTATIONROLE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRotationRole( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList rowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROWCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->rowCategories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRowCategories(const QStringList &categories)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROWCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setRowCategories( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList columnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_COLUMNCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->columnCategories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColumnCategories(const QStringList &categories)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETCOLUMNCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setColumnCategories( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool useModelCategories() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_USEMODELCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->useModelCategories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setUseModelCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETUSEMODELCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setUseModelCategories( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoRowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_AUTOROWCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoRowCategories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAutoRowCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETAUTOROWCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoRowCategories( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoColumnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_AUTOCOLUMNCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoColumnCategories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAutoColumnCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETAUTOCOLUMNCATEGORIES )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoColumnCategories( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp rowRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROWROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->rowRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRowRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROWROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setRowRolePattern( *PQREGEXP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp columnRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_COLUMNROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->columnRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColumnRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETCOLUMNROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setColumnRolePattern( *PQREGEXP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp valueRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_VALUEROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->valueRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setValueRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETVALUEROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setValueRolePattern( *PQREGEXP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp rotationRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROTATIONROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->rotationRolePattern() );
      Qt5xHb::createReturnClass( ptr, "QREGEXP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRotationRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROTATIONROLEPATTERN )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
#endif
      obj->setRotationRolePattern( *PQREGEXP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rowRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROWROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rowRoleReplace() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRowRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROWROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRowRoleReplace( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString columnRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_COLUMNROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->columnRoleReplace() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColumnRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETCOLUMNROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setColumnRoleReplace( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString valueRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_VALUEROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->valueRoleReplace() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setValueRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETVALUEROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setValueRoleReplace( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rotationRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROTATIONROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rotationRoleReplace() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRotationRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETROTATIONROLEREPLACE )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setRotationRoleReplace( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
MultiMatchBehavior multiMatchBehavior() const
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_MULTIMATCHBEHAVIOR )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->multiMatchBehavior() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMultiMatchBehavior(MultiMatchBehavior behavior)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_SETMULTIMATCHBEHAVIOR )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMultiMatchBehavior( (QItemModelBarDataProxy::MultiMatchBehavior) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remap(const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_REMAP )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(6) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISARRAY(5) && ISARRAY(6) )
    {
#endif
      obj->remap( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRINGLIST(6) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE int rowCategoryIndex(const QString& category)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ROWCATEGORYINDEX )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RINT( obj->rowCategoryIndex( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE int columnCategoryIndex(const QString& category)
*/
HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_COLUMNCATEGORYINDEX )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RINT( obj->columnCategoryIndex( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QItemModelBarDataProxySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONAUTOCOLUMNCATEGORIESCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "autoColumnCategoriesChanged(bool)", "autoColumnCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONAUTOROWCATEGORIESCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "autoRowCategoriesChanged(bool)", "autoRowCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONCOLUMNCATEGORIESCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "columnCategoriesChanged()", "columnCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONCOLUMNROLECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "columnRoleChanged(QString)", "columnRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONCOLUMNROLEPATTERNCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "columnRolePatternChanged(QRegExp)", "columnRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONCOLUMNROLEREPLACECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "columnRoleReplaceChanged(QString)", "columnRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONITEMMODELCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONMULTIMATCHBEHAVIORCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)", "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROTATIONROLECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rotationRoleChanged(QString)", "rotationRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROTATIONROLEPATTERNCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rotationRolePatternChanged(QRegExp)", "rotationRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROTATIONROLEREPLACECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rotationRoleReplaceChanged(QString)", "rotationRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROWCATEGORIESCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rowCategoriesChanged()", "rowCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROWROLECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rowRoleChanged(QString)", "rowRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROWROLEPATTERNCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rowRolePatternChanged(QRegExp)", "rowRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONROWROLEREPLACECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "rowRoleReplaceChanged(QString)", "rowRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONUSEMODELCATEGORIESCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "useModelCategoriesChanged(bool)", "useModelCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONVALUEROLECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "valueRoleChanged(QString)", "valueRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONVALUEROLEPATTERNCHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "valueRolePatternChanged(QRegExp)", "valueRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_ONVALUEROLEREPLACECHANGED )
{
  QItemModelBarDataProxySlots_connect_signal( "valueRoleReplaceChanged(QString)", "valueRoleReplaceChanged(QString)" );
}

#pragma ENDDUMP
