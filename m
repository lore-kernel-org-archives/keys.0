Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6878A3B7B7B
	for <keys@linux.kernel.org>; Wed, 24 Jun 2026 13:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782309597; cv=none; b=Gu4985HCD5NwgXEu1glalLqrWvJFLhFZL07a2nleksWVgEsFHOvEOEstsIKtyDU0z8iEfLfxh2S+e+kI5jxR3KY1uQsr4ST2PIfCBTLjJpIZOQCbqqfDtVnxVIosGx5azt0aJxyHHNP1nzwqjWzdaMJl71e/8+olP0XcTl5LA68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782309597; c=relaxed/simple;
	bh=BgUNrDhYARyTn8k5ET26+Nt7UGq/BOIZewmnXhzpOsg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=i2VnLtyykEoSX/Q7cSM1BYQZ+7MMJ1Uq/q7AdR5CYeDxCmDo3xbM28pv8nce+/lZ6+m6ST7ftsi1fBzrP8XDtbtEAIEAcDUh9RSf9lcsir8fgEA8SmvBuHR9meTubfC+uanqqXAPepCP9LsSVqDjrVJHJ5+iSVORseInw2BA5Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=gHRhzrDm; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="gHRhzrDm"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-490b613a17bso10407405e9.3
        for <keys@linux.kernel.org>; Wed, 24 Jun 2026 06:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782309594; x=1782914394; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GkOvWKMAb2YZkWYFoAq2i+1xTj+WbtQ5OfBTSEVwFTs=;
        b=gHRhzrDm1e9jFdoWHstAGR6VE8xrTE4wO5iPMoWHyC2Drs3dVHFGRzvWBbte7+zzDT
         ykfMrSPoopuYeCpwAUucd2RSoZUXeUKuRY52mBpCjn2RvzwBXQlxsu6NvnghPhHs66vU
         CBkiTvQsqvSHdqiecFOlOn/bgaX2fY7hFM9eRX1qOqodjDhvWuIhXAnSK2LN36zeFPFB
         o36vWdPfjgokD3Y33cCbdKihIUO81tM15n2j+2u15c8ONATFncQrec1m4TIbmjeYvOB0
         ZgZPIL6BAlQaHHva60f3VE1MLSWUVgmdzzB3dH9Js1QHH76gV+Ch+G2xdF9HZ9iDOP+3
         09ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782309594; x=1782914394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkOvWKMAb2YZkWYFoAq2i+1xTj+WbtQ5OfBTSEVwFTs=;
        b=byjOfu7Ms2M+Jo0ax01yQu7mhRD3R3V0l4aA3aWHiGYcJb5WMvgDFdrI0/PJXvRAsG
         3k9nNBy1Ugi9nX9hpQpBFckZVlsfce2XD8dHHRmUdRTYwj4KgSM05VwcXhucfScYJUqi
         TOroSLsuTBLRguQBWvChTbsVkJs4nAbfEtY5C23FUW7hsM4hQXNwNzCphsrkkcuKoito
         MQuM33zVPB86PIW8Iv87nl1M750JjmY7CYJX6fZu5z/4A2ozgWC0CZP6VlxuBDkCvtE5
         6tw4GQyTPQzovLEJBg9SXCfw1MhgtDXCrpJkACht7+dgNOFYhUrG6pBy8RdTXbd9FSWR
         bSNw==
X-Gm-Message-State: AOJu0YzoDmH/Im7FYT9isF22EdWy5+Qn2UMp9guVzgL6Zq7wD6CzbEHg
	HPP3Qch6tQNkyM4Dk01bZHX3+ek51xp/khFAHhEnFpRZdUrAJucNvphMPoZ1DeXHmkxUnReXmgL
	kkKc4
X-Gm-Gg: AfdE7ckE6MJ5kVBaSSIhQ9Cjuq0yuZxwfePEpSonOhQFYiS+CEesZDGL7OPyULPrQi6
	ac0MA5KIoH6HxlmY7SzjMncxUimKVlXau2I79YKMe91glarFixiA9M6NsQUms/9kIztREiAiFrP
	rzqGO1wc3FyvtVYiYYvbi8SkENweT3LTSdof4hWC3l3OzawWFuc5ZH0er04ZnloMuesowGF44rL
	GQxJVapizGgHPJlZSyz8QuladImIQQgcYd1k+d4xn/AaDFbr5wLb9qW8mhlBTBkr+G1OSVYZ4Aa
	wIuberr7aIxusTn0baK4yniTdE2/F0/mLdiIkOxzO4yW2gfEpBbSqU1j9QRr+MKLSJ/Ye4lbWAu
	Xulr8MgsJnWr++mdPe4iVhgxtdAryy6vwU8D/e0JelJjrPNqRA7aOZ/xXjfJJ442oAv0shKpM84
	tZJ07SJR8odtyuP69Of/vYPUNp7cWuuX+zC2hGaLhwwGZno6gad/D9SzzF1XrqtaL8nNj9K3nwm
	69k
X-Received: by 2002:a05:600c:1d1a:b0:492:425b:c773 with SMTP id 5b1f17b1804b1-4924908abfbmr275177115e9.10.1782309593888;
        Wed, 24 Jun 2026 06:59:53 -0700 (PDT)
Received: from localhost (p200300f65f47db0461862e6c195743dd.dip0.t-ipconnect.de. [2003:f6:5f47:db04:6186:2e6c:1957:43dd])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4924944fb71sm355843935e9.14.2026.06.24.06.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 06:59:53 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	=?UTF-8?q?=F0=9D=95=8D=F0=9D=95=96=F0=9D=95=9D=F0=9D=95=A0=F0=9D=95=94=F0=9D=95=9A=F0=9D=95=97=F0=9D=95=AA=F0=9D=95=96=F0=9D=95=A3?= <velocifyer@velocifyer.com>
Cc: keys@linux.kernel.org
Subject: [PATCH] README.rst: Adapt doc about signature check to reality
Date: Wed, 24 Jun 2026 15:59:42 +0200
Message-ID: <20260624135942.1648494-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1933; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=BgUNrDhYARyTn8k5ET26+Nt7UGq/BOIZewmnXhzpOsg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqO+LOjC/qei3O3BsRPXUsShTBAq/c7F/4wuHXF TzUhkucLcyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCajvizgAKCRCPgPtYfRL+ TvDbB/9H2mL7AH0qU71GTMDkacOC9TUsm/qK/bDTPRJd9RSsFB2eKVzAVw2f2CCLGeA7kPscZDv nlKA96baMS5gPa4jcyMMIjEskGicP+o/SNuZ4GmWAMO4ijo8crAhOKwnkMt0WgN8CKzg+pJBQAc GiHTVXi7tptJzw+jlw1J/p6Ugcd5bdXJ0Dv+VTZpjfUzL8rKOlbv24T34jCtPFMaxPFqHpXjpft d9y7IyPcR6uxPARfTUTf9oPsRbyYykFp/BY6JcfIH49wZVnJGXuq48QybGe6D+lEgEOuVWxmHqp o53n4qXZ/P/GA/8DQAHRlrzWoD0upC57rg9XPS3THrL1yr90
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The check implemented in korg-refresh-keys doesn't do any trust
checking, it only verifies that the signature is good. For that it's
enough to have the signer's certificate.
---
Hello,

this is my reaction to 𝕍𝕖𝕝𝕠𝕔𝕚𝕗𝕪𝕖𝕣 pointing out that the README wasn't
adapted in commit ff17b4fc3498 ("korg-update-pgpkeys: Make Greg KH the
trust anchor"). Instead of adapting the README to the changes in said
commit, just drop the wrong promises.

Best regards
Uwe

 README.rst | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/README.rst b/README.rst
index bbb6ed8c72a1..5bafdab3c5ea 100644
--- a/README.rst
+++ b/README.rst
@@ -24,22 +24,19 @@ You can then `gpg --import 79BE3E4300411886.asc` into your keyring.
 Refreshing keys
 ---------------
 
-First, you should assign full trust to Linus's key::
+First, you should import Konstantin's certificate, as he currently signs the
+commits in this repository:
 
-    $ gpg --edit-key 79BE3E4300411886
-    gpg> trust
-    gpg> 4
-    gpg> q
-    $ gpg --check-trustdb
+    $ gpg --import keys/E63EDCA9329DD07E.asc
+    ...
 
 Now, copy the `scripts/korg-refresh-keys` script to your `~/bin` and
 edit it according to the instructions.
 
 That script will first verify that the latest commit to the repository
-is signed by a valid key (a key directly signed by you or Linus), and
-then will run a `merge-only` import -- meaning that it will ignore any
-*new* keys added to the git repository and will only refresh keys that
-you already have imported into your keyring.
+is correctly signed, and then will run a `merge-only` import -- meaning that it
+will ignore any *new* keys added to the git repository and will only refresh
+keys that you already have imported into your keyring.
 
 Make sure to run `chmod a+x ~/bin/korg-refresh-keys` after you are done.
 
-- 
2.47.3

