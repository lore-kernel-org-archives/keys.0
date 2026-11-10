Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794280837;
	b=lzxq7B/P9GE3MGPWEhtbiyXKsExpu8AOOW2EKKQKRoTpHfrS30FCkrrnrnFch2o43VMv
	 hvh+Dxbu399I+xP0Lf5BeKsaLgIlOyklEaJCjm3VKBaDjwKXMSdYZYygJ1jL3T+UBMCPD
	 tkf0JaroTca7XY6pdOqIRvAGP+aWVTahJjYZnW+X66/hoNCv644rNBYysCU7id8asA8Af
	 l7l8v7a54zcS2tFvDiBndhdjHYapXEQqEpgQauyktIQmJb4gVyIVAnZsNI6Wfm1ey1n61
	 nNWcapKI3B/xvguDkqwyD518lE1Cgh9qDm1qnYlvDo95nTjQNnKp0+ctrgAKuw6FTLg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794280837;
	h=Received:DKIM-Signature:From:To:In-Reply-To:References:Subject:
	 Message-Id:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 X-Mailer;
	bh=tXKQq0BR1sfn1Pa7wEAJWUkXkvcMsVrGjsj+pvU8ZFU=;
	b=v67S6AD6e6QibcekHmuafBTl9GNEcHwR848b0XiV3c/a3wvti/hd3bIv0D6lvayPh8WJ
	 PAWmESA/GYE6enmJGEiBmwURH1zCGmPXA5+Wv3I+4B9uoiP1QkxgRRaZGZGMrhlihkC1l
	 3z1SpCB8mF2+5rDZ6Sm/3ua/WS388WBvHww9TxDdKoKfr7HUzZaqJWkAN6CcbuGD5Asq+
	 eBg9QvMui7uGeeHbWZNunKfQy0r887JeU2VpqFHPArZDB6mYgxRnbhg8fJwA3ymLekU4c
	 0Bf9o9qOo+2dr51cA24dI2GD2JhfLzc2rE45TNFJCmWymG6Gh1vGwgX+MPNxOWstPnw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=OLzVqvTO;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F97606A321
	for <keys@linux.kernel.org>; Tue, 10 Nov 2026 03:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=OLzVqvTO
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09E591F0089F;
	Tue, 10 Nov 2026 03:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1794280836;
	bh=tXKQq0BR1sfn1Pa7wEAJWUkXkvcMsVrGjsj+pvU8ZFU=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=OLzVqvTO0JYp5xenGNOZpy+OCLvzfKFUpCe8/Y5c9cEJyJVj02DC7Q+Sr6f7dF3LM
	 i/Dg8NSwt6GXtDN5YZURDEvHRAjUNxN3Z+BglHAAzH2m6l77gqroFtHOVA2O6A1Ml3
	 Dk9zzbSriXanWcGRIQuOPHpXmIy5oWOX0Ae8rnes=
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: keys@linux.kernel.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
In-Reply-To: <20261107190155.730398-2-u.kleine-koenig@baylibre.com>
References: <20261107190155.730398-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] Strip SHA-1 signatures from 86133DD82BC120B9
Message-Id: <179428083533.106678.17139869791175758387.b4-ty@b4>
Date: Mon, 09 Nov 2026 22:20:35 -0500
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.17-dev-ce4c1


On Sat, 07 Nov 2026 20:01:56 +0100, Uwe Kleine-König wrote:
> When Alexey Kardashevskiy's key was added, also two signatures by Rusty
> Russell and Paul Mackerras using SHA1 were added. Drop these.

Applied, thanks!

[1/1] Strip SHA-1 signatures from 86133DD82BC120B9
      https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=1391ad0ade0877dbc1dc8adb66dcfcc3220b4a2b

Best regards,
-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>

