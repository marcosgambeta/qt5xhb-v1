%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QValue3DAxisFormatter INHERIT QObject

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QValue3DAxisFormatter(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QValue3DAxisFormatter(QValue3DAxisFormatterPrivate *d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QValue3DAxisFormatter()
$deleteMethod

$prototype=void setAllowNegatives(bool allow) (protected)

$prototype=bool allowNegatives() const (protected)

$prototype=void setAllowZero(bool allow) (protected)

$prototype=bool allowZero() const (protected)

$prototype=virtual QValue3DAxisFormatter *createNewInstance() const (protected)

$prototype=virtual void recalculate() (protected)

$prototype=virtual QString stringForValue(qreal value, const QString &format) const (protected)

$prototype=virtual float positionAt(float value) const (protected)

$prototype=virtual float valueAt(float position) const (protected)

$prototype=virtual void populateCopy(QValue3DAxisFormatter &copy) const (protected)

$prototype=void markDirty(bool labelsChange = false) (protected)

$prototype=QValue3DAxis *axis() const (protected)

$prototype=QVector<float> &gridPositions() const (protected)

$prototype=QVector<float> &subGridPositions() const (protected)

$prototype=QVector<float> &labelPositions() const (protected)

$prototype=QStringList &labelStrings() const (protected)

$prototype=void setLocale(const QLocale &locale) (protected)

$prototype=QLocale locale() const (protected)

#pragma ENDDUMP
