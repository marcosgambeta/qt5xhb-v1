/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QREGEXP
#endif

CLASS QItemModelSurfaceDataProxy INHERIT QSurfaceDataProxy

   METHOD new
   METHOD delete
   METHOD itemModel
   METHOD setItemModel
   METHOD rowRole
   METHOD setRowRole
   METHOD columnRole
   METHOD setColumnRole
   METHOD xPosRole
   METHOD setXPosRole
   METHOD yPosRole
   METHOD setYPosRole
   METHOD zPosRole
   METHOD setZPosRole
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
   METHOD xPosRolePattern
   METHOD setXPosRolePattern
   METHOD yPosRolePattern
   METHOD setYPosRolePattern
   METHOD zPosRolePattern
   METHOD setZPosRolePattern
   METHOD rowRoleReplace
   METHOD setRowRoleReplace
   METHOD columnRoleReplace
   METHOD setColumnRoleReplace
   METHOD xPosRoleReplace
   METHOD setXPosRoleReplace
   METHOD yPosRoleReplace
   METHOD setYPosRoleReplace
   METHOD zPosRoleReplace
   METHOD setZPosRoleReplace
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
   METHOD onRowCategoriesChanged
   METHOD onRowRoleChanged
   METHOD onRowRolePatternChanged
   METHOD onRowRoleReplaceChanged
   METHOD onUseModelCategoriesChanged
   METHOD onXPosRoleChanged
   METHOD onXPosRolePatternChanged
   METHOD onXPosRoleReplaceChanged
   METHOD onYPosRoleChanged
   METHOD onYPosRolePatternChanged
   METHOD onYPosRoleReplaceChanged
   METHOD onZPosRoleChanged
   METHOD onZPosRolePatternChanged
   METHOD onZPosRoleReplaceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemModelSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemModelSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemModelSurfaceDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QItemModelSurfaceDataProxy(QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new1 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new2 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &yPosRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new3 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), OPQOBJECT(3,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new4 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), OPQOBJECT(5,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new5 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRING(6), OPQOBJECT(7,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new6 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRINGLIST(6), OPQOBJECT(7,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
*/
void QItemModelSurfaceDataProxy_new7 ()
{
  QItemModelSurfaceDataProxy * o = new QItemModelSurfaceDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRING(6), PQSTRINGLIST(7), PQSTRINGLIST(8), OPQOBJECT(9,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QItemModelSurfaceDataProxy(QObject *parent = Q_NULLPTR)
//[2]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
//[3]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &yPosRole, QObject *parent = Q_NULLPTR)
//[4]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, QObject *parent = Q_NULLPTR)
//[5]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
//[6]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
//[7]explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelSurfaceDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelSurfaceDataProxy_new2();
  }
  else if( ISBETWEEN(2,3) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QItemModelSurfaceDataProxy_new3();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelSurfaceDataProxy_new4();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && ISCHAR(6) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QItemModelSurfaceDataProxy_new5();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISARRAY(5) && ISARRAY(6) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QItemModelSurfaceDataProxy_new6();
  }
  else if( ISBETWEEN(8,9) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && ISCHAR(6) && ISARRAY(7) && ISARRAY(8) && (ISQOBJECT(9)||ISNIL(9)) )
  {
    QItemModelSurfaceDataProxy_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QItemModelSurfaceDataProxy()
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_DELETE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

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
QAbstractItemModel *itemModel() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ITEMMODEL )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->itemModel ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setItemModel(QAbstractItemModel *itemModel)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETITEMMODEL )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setItemModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rowRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->rowRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRowRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setRowRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString columnRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->columnRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setColumnRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString xPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->xPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setXPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString yPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->yPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setYPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString zPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->zPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setZPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList rowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->rowCategories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRowCategories(const QStringList &categories)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setRowCategories ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList columnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->columnCategories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnCategories(const QStringList &categories)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setColumnCategories ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool useModelCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_USEMODELCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->useModelCategories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setUseModelCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETUSEMODELCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setUseModelCategories ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoRowCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_AUTOROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoRowCategories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoRowCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETAUTOROWCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoRowCategories ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoColumnCategories() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_AUTOCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoColumnCategories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoColumnCategories(bool enable)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETAUTOCOLUMNCATEGORIES )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoColumnCategories ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp rowRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->rowRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRowRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setRowRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp columnRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->columnRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setColumnRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp xPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->xPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setXPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp yPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->yPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setYPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp zPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->zPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLEPATTERN )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setZPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rowRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->rowRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRowRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETROWROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setRowRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString columnRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->columnRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETCOLUMNROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setColumnRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString xPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_XPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->xPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETXPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setXPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString yPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_YPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->yPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETYPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setYPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString zPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ZPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->zPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETZPOSROLEREPLACE )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setZPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
MultiMatchBehavior multiMatchBehavior() const
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_MULTIMATCHBEHAVIOR )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->multiMatchBehavior () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMultiMatchBehavior(MultiMatchBehavior behavior)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_SETMULTIMATCHBEHAVIOR )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMultiMatchBehavior ( (QItemModelSurfaceDataProxy::MultiMatchBehavior) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remap(const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QStringList &rowCategories, const QStringList &columnCategories)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_REMAP )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(7) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && ISARRAY(6) && ISARRAY(7) )
    {
      obj->remap ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQSTRINGLIST(6), PQSTRINGLIST(7) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE int rowCategoryIndex(const QString& category)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ROWCATEGORYINDEX )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->rowCategoryIndex ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Q_INVOKABLE int columnCategoryIndex(const QString& category)
*/
HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_COLUMNCATEGORYINDEX )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->columnCategoryIndex ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QItemModelSurfaceDataProxySlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONAUTOCOLUMNCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "autoColumnCategoriesChanged(bool)", "autoColumnCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONAUTOROWCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "autoRowCategoriesChanged(bool)", "autoRowCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnCategoriesChanged()", "columnCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRoleChanged(QString)", "columnRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRolePatternChanged(QRegExp)", "columnRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONCOLUMNROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "columnRoleReplaceChanged(QString)", "columnRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONITEMMODELCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONMULTIMATCHBEHAVIORCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)", "multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowCategoriesChanged()", "rowCategoriesChanged()" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRoleChanged(QString)", "rowRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRolePatternChanged(QRegExp)", "rowRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONROWROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "rowRoleReplaceChanged(QString)", "rowRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONUSEMODELCATEGORIESCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "useModelCategoriesChanged(bool)", "useModelCategoriesChanged(bool)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRoleChanged(QString)", "xPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRolePatternChanged(QRegExp)", "xPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONXPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "xPosRoleReplaceChanged(QString)", "xPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRoleChanged(QString)", "yPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRolePatternChanged(QRegExp)", "yPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONYPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "yPosRoleReplaceChanged(QString)", "yPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRoleChanged(QString)", "zPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLEPATTERNCHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRolePatternChanged(QRegExp)", "zPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSURFACEDATAPROXY_ONZPOSROLEREPLACECHANGED )
{
  QItemModelSurfaceDataProxySlots_connect_signal( "zPosRoleReplaceChanged(QString)", "zPosRoleReplaceChanged(QString)" );
}

#pragma ENDDUMP
