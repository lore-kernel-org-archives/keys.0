Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A83AFAEF
	for <keys@linux.kernel.org>; Fri, 26 Jun 2026 22:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782512589; cv=none; b=TRv8fGMziDSnwZ5SiFsVki2qSskwIiS5D2o7pN1e3sBO8xUY2aa6RgOlgKhQeVIFGOCxByX9Fkkul+op4Bx4e4f4V6O8jREO1CTO023A6bL85Z+fBHaduuuisgq75WnmS+oR4OfRudbcNgX/4IFuDQuK3pgKr7+IMZWnmQIJJQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782512589; c=relaxed/simple;
	bh=4DE1lrfiYZecjBGqa7pXU2zppfZ25ruWh/Dnaw61xWg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Qt0jO3zXcYNVxyYqiM+HKv3+ftQV3kgQiNTMbjsGYe9M1jmGXiN6S9Mzb2D5IISLJ9XP0LQTXdI2PjDdHsn9COXOBcEhDE/vBzvSyOzy4fy5shDdEq9KPtOV7JrNY4pSj3SVGH1wQ4yJ0i3NDUlYuBhq0YTyeB/C4D3yyIc/zUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=NmkYwxU6; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="NmkYwxU6"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6849A1F000E9;
	Fri, 26 Jun 2026 22:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1782512587;
	bh=hNR2rM0EudF2pM5co7agCy32i6Ypww60/VBIfYNZ4lc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=NmkYwxU68oBk3Rh79c6/arsvRJW2Dt4yvIH+bMYjiq1TpgrP0GO88io+TD2uC3XAu
	 x5D+c8Oismv1gSqPQHMbyxKwTeQCOsyL9vX99DZqJZrwS64K4l+uCqE2+o7JX/XEqt
	 50N7nDp7r4FKaIpbwyG2ooRYdc7HcAGHKL2fLAnQ=
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: =?utf-8?q?=F0=9D=95=8D=F0=9D=95=96=F0=9D=95=9D=F0=9D=95=A0=F0=9D=95=94=F0=9D=95=9A=F0=9D=95=97=F0=9D=95=AA=F0=9D=95=96=F0=9D=95=A3?= <velocifyer@velocifyer.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
In-Reply-To: <20260624135942.1648494-2-u.kleine-koenig@baylibre.com>
References: <20260624135942.1648494-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] README.rst: Adapt doc about signature check to reality
Message-Id: <178251258731.1891455.4929765103119477316.b4-ty@b4>
Date: Fri, 26 Jun 2026 18:23:07 -0400
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-0a195


On Wed, 24 Jun 2026 15:59:42 +0200, Uwe Kleine-König wrote:
> The check implemented in korg-refresh-keys doesn't do any trust
> checking, it only verifies that the signature is good. For that it's
> enough to have the signer's certificate.

Applied, thanks!

[1/1] README.rst: Adapt doc about signature check to reality
      commit: d4e511d9e3103758a7b297e36c3ba4ed157dcb45

Best regards,
-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>

