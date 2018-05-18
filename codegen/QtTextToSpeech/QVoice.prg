%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete

   METHOD age
   METHOD ageName
   METHOD gender
   METHOD genderName
   METHOD name

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVoice()
$internalConstructor=5,10,0|new1|

$prototype=QVoice(const QVoice &other)
$internalConstructor=5,10,0|new2|const QVoice &

$prototype=QVoice(const QString &name, Gender gender, Age age, const QVariant &data) (private)

//[1]QVoice()
//[2]QVoice(const QVoice &other)
//[3]QVoice(const QString &name, Gender gender, Age age, const QVariant &data) (private)

HB_FUNC_STATIC( QVOICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVoice_new1();
  }
  else if( ISNUMPAR(1) && ISQVOICE(1) )
  {
    QVoice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVoice()
$deleteMethod=5,10,0

$prototype=QString name() const
$method=5,10,0|QString|name|

$prototype=Gender gender() const
$method=5,10,0|QVoice::Gender|gender|

$prototype=Age age() const
$method=5,10,0|QVoice::Age|age|

$prototype=static QString genderName(QVoice::Gender gender)
$staticMethod=5,10,0|QString|genderName|QVoice::Gender

$prototype=static QString ageName(QVoice::Age age)
$staticMethod=5,10,0|QString|ageName|QVoice::Age

$prototype=void setName(const QString &name) (private)

$prototype=void setGender(Gender gender) (private)

$prototype=void setAge(Age age) (private)

$prototype=void setData(const QVariant &data) (private)

$prototype=QVariant data() const (private)

$extraMethods

#pragma ENDDUMP
