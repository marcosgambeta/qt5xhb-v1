%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMorphTarget INHERIT QObject

   METHOD new
   METHOD delete

   METHOD addAttribute
   METHOD attributeList
   METHOD attributeNames
   METHOD fromGeometry
   METHOD removeAttribute
   METHOD setAttributes

   METHOD onAttributeNamesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMorphTarget(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QStringList attributeNames READ attributeNames NOTIFY attributeNamesChanged)
%%

$prototype=QStringList attributeNames() const

%%
%%
%%

$prototype=QVector<Qt3DRender::QAttribute *> attributeList() const
$prototype=void setAttributes(const QVector<Qt3DRender::QAttribute *> &attributes)
$prototype=void addAttribute(Qt3DRender::QAttribute *attribute)
$prototype=void removeAttribute(Qt3DRender::QAttribute *attribute)
$prototype=Q_INVOKABLE static QMorphTarget *fromGeometry(Qt3DRender::QGeometry *geometry, const QStringList &attributes)

$beginSignals
$signal=|attributeNamesChanged(QStringList)
$endSignals

#pragma ENDDUMP
