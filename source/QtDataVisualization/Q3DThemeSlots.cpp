//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "Q3DThemeSlots.hpp"

Q3DThemeSlots::Q3DThemeSlots(QObject *parent) : QObject(parent)
{
}

Q3DThemeSlots::~Q3DThemeSlots()
{
}

void Q3DThemeSlots::ambientLightStrengthChanged(float strength)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "ambientLightStrengthChanged(float)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pstrength = hb_itemPutND(NULL, strength);

    hb_vmEvalBlockV(cb, 2, psender, pstrength);

    hb_itemRelease(psender);
    hb_itemRelease(pstrength);
  }
}

void Q3DThemeSlots::backgroundColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "backgroundColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::backgroundEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "backgroundEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void Q3DThemeSlots::baseColorsChanged(const QList<QColor> &colors)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "baseColorsChanged(QList<QColor>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_DYNS pDynSym = hb_dynsymFindName("QCOLOR");
    PHB_ITEM pcolors = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < colors.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QColor(colors[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(pcolors, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QCOLOR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, pcolors);

    hb_itemRelease(psender);
    hb_itemRelease(pcolors);
  }
}

void Q3DThemeSlots::baseGradientsChanged(const QList<QLinearGradient> &gradients)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "baseGradientsChanged(QList<QLinearGradient>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_DYNS pDynSym = hb_dynsymFindName("QLINEARGRADIENT");
    PHB_ITEM pgradients = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < gradients.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QLinearGradient(gradients[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(pgradients, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QLINEARGRADIENT", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, pgradients);

    hb_itemRelease(psender);
    hb_itemRelease(pgradients);
  }
}

void Q3DThemeSlots::colorStyleChanged(Q3DTheme::ColorStyle style)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "colorStyleChanged(Q3DTheme::ColorStyle)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pstyle = hb_itemPutNI(NULL, static_cast<int>(style));

    hb_vmEvalBlockV(cb, 2, psender, pstyle);

    hb_itemRelease(psender);
    hb_itemRelease(pstyle);
  }
}

void Q3DThemeSlots::fontChanged(const QFont &font)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fontChanged(QFont)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pfont = Qt5xHb::Signals_return_object((void *)&font, "QFONT");

    hb_vmEvalBlockV(cb, 2, psender, pfont);

    hb_itemRelease(psender);
    hb_itemRelease(pfont);
  }
}

void Q3DThemeSlots::gridEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "gridEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void Q3DThemeSlots::gridLineColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "gridLineColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::highlightLightStrengthChanged(float strength)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "highlightLightStrengthChanged(float)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pstrength = hb_itemPutND(NULL, strength);

    hb_vmEvalBlockV(cb, 2, psender, pstrength);

    hb_itemRelease(psender);
    hb_itemRelease(pstrength);
  }
}

void Q3DThemeSlots::labelBackgroundColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelBackgroundColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::labelBackgroundEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelBackgroundEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void Q3DThemeSlots::labelBorderEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelBorderEnabledChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM penabled = hb_itemPutL(NULL, enabled);

    hb_vmEvalBlockV(cb, 2, psender, penabled);

    hb_itemRelease(psender);
    hb_itemRelease(penabled);
  }
}

void Q3DThemeSlots::labelTextColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "labelTextColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::lightColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "lightColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::lightStrengthChanged(float strength)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "lightStrengthChanged(float)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pstrength = hb_itemPutND(NULL, strength);

    hb_vmEvalBlockV(cb, 2, psender, pstrength);

    hb_itemRelease(psender);
    hb_itemRelease(pstrength);
  }
}

void Q3DThemeSlots::multiHighlightColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "multiHighlightColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::multiHighlightGradientChanged(const QLinearGradient &gradient)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "multiHighlightGradientChanged(QLinearGradient)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pgradient = Qt5xHb::Signals_return_object((void *)&gradient, "QLINEARGRADIENT");

    hb_vmEvalBlockV(cb, 2, psender, pgradient);

    hb_itemRelease(psender);
    hb_itemRelease(pgradient);
  }
}

void Q3DThemeSlots::singleHighlightColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "singleHighlightColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots::singleHighlightGradientChanged(const QLinearGradient &gradient)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "singleHighlightGradientChanged(QLinearGradient)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pgradient = Qt5xHb::Signals_return_object((void *)&gradient, "QLINEARGRADIENT");

    hb_vmEvalBlockV(cb, 2, psender, pgradient);

    hb_itemRelease(psender);
    hb_itemRelease(pgradient);
  }
}

void Q3DThemeSlots::typeChanged(Q3DTheme::Theme themeType)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "typeChanged(Q3DTheme::Theme)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pthemeType = hb_itemPutNI(NULL, static_cast<int>(themeType));

    hb_vmEvalBlockV(cb, 2, psender, pthemeType);

    hb_itemRelease(psender);
    hb_itemRelease(pthemeType);
  }
}

void Q3DThemeSlots::windowColorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "windowColorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DTHEME");
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, psender, pcolor);

    hb_itemRelease(psender);
    hb_itemRelease(pcolor);
  }
}

void Q3DThemeSlots_connect_signal(const QString &signal, const QString &slot)
{
  Q3DTheme *obj = (Q3DTheme *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Q3DThemeSlots *s = QCoreApplication::instance()->findChild<Q3DThemeSlots *>();

    if (s == NULL)
    {
      s = new Q3DThemeSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
