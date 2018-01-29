%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBarSet INHERIT QObject

   METHOD new
   METHOD delete

   METHOD append
   METHOD at
   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD count
   METHOD insert
   METHOD label
   METHOD labelBrush
   METHOD labelColor
   METHOD labelFont
   METHOD pen
   METHOD remove
   METHOD replace
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setLabel
   METHOD setLabelBrush
   METHOD setLabelColor
   METHOD setLabelFont
   METHOD setPen
   METHOD sum

   METHOD onBorderColorChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelBrushChanged
   METHOD onLabelChanged
   METHOD onLabelColorChanged
   METHOD onLabelFontChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesAdded
   METHOD onValuesRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

prototype=explicit QBarSet(const QString label, QObject *parent = Q_NULLPTR)
$constructor=|new|const QString &,QObject *=Q_NULLPTR

prototype=virtual ~QBarSet()
$deleteMethod

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

prototype=QString label() const
$method=|QString|label|

prototype=void setLabel(const QString label)
$method=|void|setLabel|const QString &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

prototype=QPen pen() const
$method=|QPen|pen|

prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

prototype=QBrush brush() const
$method=|QBrush|brush|

prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

prototype=QBrush labelBrush() const
$method=|QBrush|labelBrush|

prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

prototype=QFont labelFont() const
$method=|QFont|labelFont|

prototype=void setLabelFont(const QFont &font)
$method=|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

prototype=QColor color()
$method=|QColor|color|

prototype=void setColor(QColor color)
$method=|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

prototype=QColor borderColor()
$method=|QColor|borderColor|

prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

prototype=QColor labelColor()
$method=|QColor|labelColor|

prototype=void setLabelColor(QColor color)
$method=|void|setLabelColor|QColor

%%
%%
%%

prototype=void append(const qreal value)
$internalMethod=|void|append,append1|const qreal

prototype=void append(const QList<qreal> &values)
$internalMethod=|void|append,append2|const QList<qreal> &

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBARSET_APPEND )
{
}

prototype=void insert(const int index, const qreal value)
$method=|void|insert|const int,const qreal

prototype=void remove(const int index, const int count = 1)
$method=|void|remove|const int,const int=1

prototype=void replace(const int index, const qreal value)
$method=|void|replace|const int,const qreal

prototype=qreal at(const int index) const
$method=|qreal|at|const int

prototype=int count() const
$method=|int|count|

prototype=qreal sum() const
$method=|qreal|sum|

#pragma ENDDUMP
