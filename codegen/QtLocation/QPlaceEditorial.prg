$header

#include "hbclass.ch"

CLASS QPlaceEditorial INHERIT QPlaceContent

   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD title
   METHOD setTitle
   METHOD language
   METHOD setLanguage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceEditorial()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)
$internalConstructor=5,4,0|new2|const QPlaceContent &

//[1]QPlaceEditorial()
//[2]QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACEEDITORIAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceEditorial_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceEditorial_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString text() const
$method=5,4,0|QString|text|

$prototype=void setText(const QString &text)
$method=5,4,0|void|setText|const QString &

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=void setTitle(const QString &data)
$method=5,4,0|void|setTitle|const QString &

$prototype=QString language() const
$method=5,4,0|QString|language|

$prototype=void setLanguage(const QString &data)
$method=5,4,0|void|setLanguage|const QString &

#pragma ENDDUMP
