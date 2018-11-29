%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QBarDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QItemModelBarDataProxy(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QAbstractItemModel *,QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new3|QAbstractItemModel *,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new4|QAbstractItemModel *,const QString &,const QString &,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
$internalConstructor=|new5|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
$internalConstructor=|new6|QAbstractItemModel *,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=Q_NULLPTR

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
$internalConstructor=|new7|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=Q_NULLPTR

//[1]explicit QItemModelBarDataProxy(QObject *parent = Q_NULLPTR)
//[2]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
//[3]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = Q_NULLPTR)
//[4]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = Q_NULLPTR)
//[5]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
//[6]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)
//[7]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = Q_NULLPTR)

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

$prototype=virtual ~QItemModelBarDataProxy()
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
%% Q_PROPERTY(QString valueRole READ valueRole WRITE setValueRole NOTIFY valueRoleChanged)
%%

$prototype=QString valueRole() const
$method=|QString|valueRole|

$prototype=void setValueRole(const QString &role)
$method=|void|setValueRole|const QString &

%%
%% Q_PROPERTY(QString rotationRole READ rotationRole WRITE setRotationRole NOTIFY rotationRoleChanged)
%%

$prototype=QString rotationRole() const
$method=|QString|rotationRole|

$prototype=void setRotationRole(const QString &role)
$method=|void|setRotationRole|const QString &

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
%% Q_PROPERTY(QRegExp valueRolePattern READ valueRolePattern WRITE setValueRolePattern NOTIFY valueRolePatternChanged REVISION 1)
%%

$prototype=QRegExp valueRolePattern() const
$method=|QRegExp|valueRolePattern|

$prototype=void setValueRolePattern(const QRegExp &pattern)
$method=|void|setValueRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp rotationRolePattern READ rotationRolePattern WRITE setRotationRolePattern NOTIFY rotationRolePatternChanged REVISION 1)
%%

$prototype=QRegExp rotationRolePattern() const
$method=|QRegExp|rotationRolePattern|

$prototype=void setRotationRolePattern(const QRegExp &pattern)
$method=|void|setRotationRolePattern|const QRegExp &

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
%% Q_PROPERTY(QString valueRoleReplace READ valueRoleReplace WRITE setValueRoleReplace NOTIFY valueRoleReplaceChanged REVISION 1)
%%

$prototype=QString valueRoleReplace() const
$method=|QString|valueRoleReplace|

$prototype=void setValueRoleReplace(const QString &replace)
$method=|void|setValueRoleReplace|const QString &

%%
%% Q_PROPERTY(QString rotationRoleReplace READ rotationRoleReplace WRITE setRotationRoleReplace NOTIFY rotationRoleReplaceChanged REVISION 1)
%%

$prototype=QString rotationRoleReplace() const
$method=|QString|rotationRoleReplace|

$prototype=void setRotationRoleReplace(const QString &replace)
$method=|void|setRotationRoleReplace|const QString &

%%
%% Q_PROPERTY(MultiMatchBehavior multiMatchBehavior READ multiMatchBehavior WRITE setMultiMatchBehavior NOTIFY multiMatchBehaviorChanged REVISION 1)
%%

$prototype=MultiMatchBehavior multiMatchBehavior() const
$method=|QItemModelBarDataProxy::MultiMatchBehavior|multiMatchBehavior|

$prototype=void setMultiMatchBehavior(MultiMatchBehavior behavior)
$method=|void|setMultiMatchBehavior|QItemModelBarDataProxy::MultiMatchBehavior

%%
%%
%%

$prototype=void remap(const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories)
$method=|void|remap|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &

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
$signal=|multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)
$signal=|rotationRoleChanged(QString)
$signal=|rotationRolePatternChanged(QRegExp)
$signal=|rotationRoleReplaceChanged(QString)
$signal=|rowCategoriesChanged()
$signal=|rowRoleChanged(QString)
$signal=|rowRolePatternChanged(QRegExp)
$signal=|rowRoleReplaceChanged(QString)
$signal=|useModelCategoriesChanged(bool)
$signal=|valueRoleChanged(QString)
$signal=|valueRolePatternChanged(QRegExp)
$signal=|valueRoleReplaceChanged(QString)
$endSignals

#pragma ENDDUMP
