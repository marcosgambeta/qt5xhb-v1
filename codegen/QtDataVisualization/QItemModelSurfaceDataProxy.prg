%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSurfaceDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QItemModelSurfaceDataProxy(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QAbstractItemModel *,QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &yPosRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new3|QAbstractItemModel *,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new4|QAbstractItemModel *,const QString &,const QString &,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new5|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &yPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
$internalConstructor=|new6|QAbstractItemModel *,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelSurfaceDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
$internalConstructor=|new7|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=Q_NULLPTR

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

$prototype=virtual ~QItemModelSurfaceDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel* itemModel READ itemModel WRITE setItemModel NOTIFY itemModelChanged)
%%

$prototype=QAbstractItemModel *itemModel() const
$method=|QAbstractItemModel *|itemModel|

$prototype=void setItemModel(QAbstractItemModel *itemModel)
$method=|void|setItemModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QString rowRole READ rowRole WRITE setRowRole NOTIFY rowRoleChanged)
%%

$prototype=QString rowRole() const
$method=|QString|rowRole|

$prototype=void setRowRole(const QString &role)
$method=|void|setRowRole|const QString &

%%
%% Q_PROPERTY(QString columnRole READ columnRole WRITE setColumnRole NOTIFY columnRoleChanged)
%%

$prototype=QString columnRole() const
$method=|QString|columnRole|

$prototype=void setColumnRole(const QString &role)
$method=|void|setColumnRole|const QString &

%%
%% Q_PROPERTY(QString xPosRole READ xPosRole WRITE setXPosRole NOTIFY xPosRoleChanged)
%%

$prototype=QString xPosRole() const
$method=|QString|xPosRole|

$prototype=void setXPosRole(const QString &role)
$method=|void|setXPosRole|const QString &

%%
%% Q_PROPERTY(QString yPosRole READ yPosRole WRITE setYPosRole NOTIFY yPosRoleChanged)
%%

$prototype=QString yPosRole() const
$method=|QString|yPosRole|

$prototype=void setYPosRole(const QString &role)
$method=|void|setYPosRole|const QString &

%%
%% Q_PROPERTY(QString zPosRole READ zPosRole WRITE setZPosRole NOTIFY zPosRoleChanged)
%%

$prototype=QString zPosRole() const
$method=|QString|zPosRole|

$prototype=void setZPosRole(const QString &role)
$method=|void|setZPosRole|const QString &

%%
%% Q_PROPERTY(QStringList rowCategories READ rowCategories WRITE setRowCategories NOTIFY rowCategoriesChanged)
%%

$prototype=QStringList rowCategories() const
$method=|QStringList|rowCategories|

$prototype=void setRowCategories(const QStringList &categories)
$method=|void|setRowCategories|const QStringList &

%%
%% Q_PROPERTY(QStringList columnCategories READ columnCategories WRITE setColumnCategories NOTIFY columnCategoriesChanged)
%%

$prototype=QStringList columnCategories() const
$method=|QStringList|columnCategories|

$prototype=void setColumnCategories(const QStringList &categories)
$method=|void|setColumnCategories|const QStringList &

%%
%% Q_PROPERTY(bool useModelCategories READ useModelCategories WRITE setUseModelCategories NOTIFY useModelCategoriesChanged)
%%

$prototype=bool useModelCategories() const
$method=|bool|useModelCategories|

$prototype=void setUseModelCategories(bool enable)
$method=|void|setUseModelCategories|bool

%%
%% Q_PROPERTY(bool autoRowCategories READ autoRowCategories WRITE setAutoRowCategories NOTIFY autoRowCategoriesChanged)
%%

$prototype=bool autoRowCategories() const
$method=|bool|autoRowCategories|

$prototype=void setAutoRowCategories(bool enable)
$method=|void|setAutoRowCategories|bool

%%
%% Q_PROPERTY(bool autoColumnCategories READ autoColumnCategories WRITE setAutoColumnCategories NOTIFY autoColumnCategoriesChanged)
%%

$prototype=bool autoColumnCategories() const
$method=|bool|autoColumnCategories|

$prototype=void setAutoColumnCategories(bool enable)
$method=|void|setAutoColumnCategories|bool

%%
%% Q_PROPERTY(QRegExp rowRolePattern READ rowRolePattern WRITE setRowRolePattern NOTIFY rowRolePatternChanged REVISION 1)
%%

$prototype=QRegExp rowRolePattern() const
$method=|QRegExp|rowRolePattern|

$prototype=void setRowRolePattern(const QRegExp &pattern)
$method=|void|setRowRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp columnRolePattern READ columnRolePattern WRITE setColumnRolePattern NOTIFY columnRolePatternChanged REVISION 1)
%%

$prototype=QRegExp columnRolePattern() const
$method=|QRegExp|columnRolePattern|

$prototype=void setColumnRolePattern(const QRegExp &pattern)
$method=|void|setColumnRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp xPosRolePattern READ xPosRolePattern WRITE setXPosRolePattern NOTIFY xPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp xPosRolePattern() const
$method=|QRegExp|xPosRolePattern|

$prototype=void setXPosRolePattern(const QRegExp &pattern)
$method=|void|setXPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp yPosRolePattern READ yPosRolePattern WRITE setYPosRolePattern NOTIFY yPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp yPosRolePattern() const
$method=|QRegExp|yPosRolePattern|

$prototype=void setYPosRolePattern(const QRegExp &pattern)
$method=|void|setYPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp zPosRolePattern READ zPosRolePattern WRITE setZPosRolePattern NOTIFY zPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp zPosRolePattern() const
$method=|QRegExp|zPosRolePattern|

$prototype=void setZPosRolePattern(const QRegExp &pattern)
$method=|void|setZPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QString rowRoleReplace READ rowRoleReplace WRITE setRowRoleReplace NOTIFY rowRoleReplaceChanged REVISION 1)
%%

$prototype=QString rowRoleReplace() const
$method=|QString|rowRoleReplace|

$prototype=void setRowRoleReplace(const QString &replace)
$method=|void|setRowRoleReplace|const QString &

%%
%% Q_PROPERTY(QString columnRoleReplace READ columnRoleReplace WRITE setColumnRoleReplace NOTIFY columnRoleReplaceChanged REVISION 1)
%%

$prototype=QString columnRoleReplace() const
$method=|QString|columnRoleReplace|

$prototype=void setColumnRoleReplace(const QString &replace)
$method=|void|setColumnRoleReplace|const QString &

%%
%% Q_PROPERTY(QString xPosRoleReplace READ xPosRoleReplace WRITE setXPosRoleReplace NOTIFY xPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString xPosRoleReplace() const
$method=|QString|xPosRoleReplace|

$prototype=void setXPosRoleReplace(const QString &replace)
$method=|void|setXPosRoleReplace|const QString &

%%
%% Q_PROPERTY(QString yPosRoleReplace READ yPosRoleReplace WRITE setYPosRoleReplace NOTIFY yPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString yPosRoleReplace() const
$method=|QString|yPosRoleReplace|

$prototype=void setYPosRoleReplace(const QString &replace)
$method=|void|setYPosRoleReplace|const QString &

%%
%% Q_PROPERTY(QString zPosRoleReplace READ zPosRoleReplace WRITE setZPosRoleReplace NOTIFY zPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString zPosRoleReplace() const
$method=|QString|zPosRoleReplace|

$prototype=void setZPosRoleReplace(const QString &replace)
$method=|void|setZPosRoleReplace|const QString &

%%
%% Q_PROPERTY(MultiMatchBehavior multiMatchBehavior READ multiMatchBehavior WRITE setMultiMatchBehavior NOTIFY multiMatchBehaviorChanged REVISION 1)
%%

$prototype=MultiMatchBehavior multiMatchBehavior() const
$method=|QItemModelSurfaceDataProxy::MultiMatchBehavior|multiMatchBehavior|

$prototype=void setMultiMatchBehavior(MultiMatchBehavior behavior)
$method=|void|setMultiMatchBehavior|QItemModelSurfaceDataProxy::MultiMatchBehavior

%%
%%
%%

$prototype=void remap(const QString &rowRole, const QString &columnRole, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QStringList &rowCategories, const QStringList &columnCategories)
$method=|void|remap|const QString &,const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &

$prototype=Q_INVOKABLE int rowCategoryIndex(const QString& category)
$method=|int|rowCategoryIndex|const QString &

$prototype=Q_INVOKABLE int columnCategoryIndex(const QString& category)
$method=|int|columnCategoryIndex|const QString &

$beginSignals
$signal=|autoColumnCategoriesChanged(bool)
$signal=|autoRowCategoriesChanged(bool)
$signal=|columnCategoriesChanged()
$signal=|columnRoleChanged(QString)
$signal=|columnRolePatternChanged(QRegExp)
$signal=|columnRoleReplaceChanged(QString)
$signal=|itemModelChanged(QAbstractItemModel*)
$signal=|multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)
$signal=|rowCategoriesChanged()
$signal=|rowRoleChanged(QString)
$signal=|rowRolePatternChanged(QRegExp)
$signal=|rowRoleReplaceChanged(QString)
$signal=|useModelCategoriesChanged(bool)
$signal=|xPosRoleChanged(QString)
$signal=|xPosRolePatternChanged(QRegExp)
$signal=|xPosRoleReplaceChanged(QString)
$signal=|yPosRoleChanged(QString)
$signal=|yPosRolePatternChanged(QRegExp)
$signal=|yPosRoleReplaceChanged(QString)
$signal=|zPosRoleChanged(QString)
$signal=|zPosRolePatternChanged(QRegExp)
$signal=|zPosRoleReplaceChanged(QString)
$endSignals

#pragma ENDDUMP
