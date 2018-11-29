%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QCollator(const QLocale &locale = QLocale())
$internalConstructor=5,2,0|new1|const QLocale &=QLocale()

$prototype=QCollator(const QCollator &)
$internalConstructor=5,2,0|new2|const QCollator &

//[1]QCollator(const QLocale &locale = QLocale())
//[2]QCollator(const QCollator &)

HB_FUNC_STATIC( QCOLLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLOCALE(1)||ISNIL(1)) )
  {
    QCollator_new1();
  }
  else if( ISNUMPAR(1) && ISQCOLLATOR(1) )
  {
    QCollator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=void swap(QCollator &other)
$method=5,2,0|void|swap|QCollator &

$prototype=void setLocale(const QLocale &locale)
$method=5,2,0|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=5,2,0|QLocale|locale|

$prototype=Qt::CaseSensitivity caseSensitivity() const
$method=5,2,0|Qt::CaseSensitivity|caseSensitivity|

$prototype=void setCaseSensitivity(Qt::CaseSensitivity cs)
$method=5,2,0|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setNumericMode(bool on)
$method=5,2,0|void|setNumericMode|bool

$prototype=bool numericMode() const
$method=5,2,0|bool|numericMode|

$prototype=void setIgnorePunctuation(bool on)
$method=5,2,0|void|setIgnorePunctuation|bool

$prototype=bool ignorePunctuation() const
$method=5,2,0|bool|ignorePunctuation|

$prototype=QCollatorSortKey sortKey(const QString &string) const
$method=5,2,0|QCollatorSortKey|sortKey|const QString &

$extraMethods

#pragma ENDDUMP
