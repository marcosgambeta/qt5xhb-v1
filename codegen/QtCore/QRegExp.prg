%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QRegExp

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QRegExp ()
$internalConstructor=|new1|

$prototype=QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
$internalConstructor=|new2|const QString &,Qt::CaseSensitivity=Qt::CaseSensitive,QRegExp::PatternSyntax=QRegExp::RegExp

$prototype=QRegExp ( const QRegExp & rx )
$internalConstructor=|new3|const QRegExp &

//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegExp_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QRegExp_new2();
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QRegExp_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString cap ( int nth = 0 ) const
$method=|QString|cap|int=0

$prototype=int captureCount () const
$method=|int|captureCount|

$prototype=QStringList capturedTexts () const
$method=|QStringList|capturedTexts|

$prototype=Qt::CaseSensitivity caseSensitivity () const
$method=|Qt::CaseSensitivity|caseSensitivity|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=bool exactMatch ( const QString & str ) const
$method=|bool|exactMatch|const QString &

$prototype=int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
$method=|int|indexIn|const QString &,int=0,QRegExp::CaretMode=QRegExp::CaretAtZero

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isMinimal () const
$method=|bool|isMinimal|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
$method=|int|lastIndexIn|const QString &,int=-1,QRegExp::CaretMode=QRegExp::CaretAtZero

$prototype=int matchedLength () const
$method=|int|matchedLength|

$prototype=QString pattern () const
$method=|QString|pattern|

$prototype=PatternSyntax patternSyntax () const
$method=|QRegExp::PatternSyntax|patternSyntax|

$prototype=int pos ( int nth = 0 ) const
$method=|int|pos|int=0

$prototype=void setCaseSensitivity ( Qt::CaseSensitivity cs )
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setMinimal ( bool minimal )
$method=|void|setMinimal|bool

$prototype=void setPattern ( const QString & pattern )
$method=|void|setPattern|const QString &

$prototype=void setPatternSyntax ( PatternSyntax syntax )
$method=|void|setPatternSyntax|QRegExp::PatternSyntax

$prototype=static QString escape ( const QString & str )
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
