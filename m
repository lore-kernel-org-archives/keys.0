Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEDB21A459
	for <keys@linux.kernel.org>; Tue,  3 Feb 2026 18:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142784; cv=none; b=R7aVW1CzDKnxgb8M9VTiJEzoGVaO4U/OYZ2f0gM7lQnCbjGxkI99p8hB1l9+5Z159e0FcYH7zw7PAvPPA+Ak4yHeN7W2xe+DOUrhLjzXK9LwUJoiEwANl4P4XIAE8zoJeCbK7oku16RA9qiuZ6ydiz055l3u1YVeydWKr2vLAsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142784; c=relaxed/simple;
	bh=/pXIWOD+BNbcYNPgVOdAZtf3g4yj5h7/Osj1UGtsuMM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W1z78uCy6dR1FwGhq9DxKn0Yn8uQB3kYYkvBqvLdmEqbUUjIwtp6hJ4h6Yf3o4BQSH9aHMmEfcM1ReVwrTiC866SXW7PiClUhGekzWBTWVt0DXMK2Y1a/goyD+M0jx3quBBsBm7104engSZYYRi22UKXNGiAlEz3PgELd/NH9p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JQveKO2U; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JQveKO2U"
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4805ef35864so52037855e9.0
        for <keys@linux.kernel.org>; Tue, 03 Feb 2026 10:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770142780; x=1770747580; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sGllwlGrsqIVqYm8DUvRJHG8s6Si0HCe3PzSUYP4nBo=;
        b=JQveKO2UngJMEYnvR8KR/Vg8o1q7yOayYaPiSuoBwCISzz3XC1z0ZqUyV00kTPrL+z
         fNhLctHQm9sCyXGekQM6xXumMT1PyNJIOd+3KdES+oYyz0P7oCcjYZeH7jrOZg1NRsmQ
         d1aP8TjdTBCRr00w67riCmkElvoWEUKir+6VUs1gFp4rJnxY5ykalLrvR+3Z5xfmwzg8
         7axKLODXvh/mF5qc6joGvw1z2AokBCSOj7+ojjJn94uBgKf9QXvBEVgFn73lCrr4iCiy
         C5ohmqZvv4XZ6SY2Tzc2qX0C2hqVlsA/jGcQXI5XncdHArbKOqbKj6QBseemmPKeGZ26
         BrMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142780; x=1770747580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sGllwlGrsqIVqYm8DUvRJHG8s6Si0HCe3PzSUYP4nBo=;
        b=FqVNYp04brKnnYOHn6KKD8t8nNKoctIovnYFG02TtYynCDdX6CBBwsSMBysgRLqEho
         Olcr0AejzEJDp0i0uCohnq0eQJSRr7pk4RjBwep8N2MJuoHbakULt6CbvPRwcz529M/X
         0tMNVckxgUzsMcMtNCsEZ0HN2qSadChq9f1CFSI15tQpSkexP2KAXKSY6oeqlb5EIs3e
         7G8QfU9i1SJIhlyqJ3fq5kDfr1RevbsKQfAxgCI7iYguKHMZg++HfF/rYXl7wnaqL59s
         pBFIhnHAvwQ+2UzuZF+nG7O0DgPBc8/yaIg96LDxmumx6AlaD57xus8dHa37UW+agzMW
         ds3A==
X-Gm-Message-State: AOJu0YxlfKwsAG2tXPPeV0ISW8e0gGphbmQ6ML4KPpGZrSiyac0Z02pk
	uqFpckBI60t3pn1YUShpqqJx8RxUma0OthFHp0aNtg3aE+Kp1yGKRf/8l5MToJqth6kHpYF7Jy7
	McNaLa1E=
X-Gm-Gg: AZuq6aIjwZF8f+hBNJboSd7F153UKTxgX5GUmkGfHw+rem0jLwtHMex35lZgagp9aiz
	j2ntCWQKbUasDt/tDKcX/6/1L29q5mvrm76EIZkmNaIe6r0dSswd8GuBJd5tOZqHbmffPFtIs5Y
	fSLpf93vI1D3Nsr3TQFD4+5qQ0zukDKgDTyzATraSxTJUjTE6lzfK5ncrN8mGZarLTx29dGhiOH
	GfjU4kqMyYQ1gw28fAj5rv+gmnhFwRIKvygUh2qesRxrTeieCCv74V5AgLhTLE5+Y4tZjBAPTj0
	qYKZRe8tbdERaIUtpxZnt+H1EOn703q1ry5mVHifL5hc7AalQigzDReeyDwWFYA6c9Ho5S6uZUr
	ZqBt0jtUR2BNNkAFhPKaFcmQkYwuAxO5z8OQVmyCU1kzt/gAatOiBcdDGOMqLRd82KvUVW2PxMB
	iomJupKDg5mx/q40QvCDYu+1MKanEy9ertqnlr5kLULekTLeqbXH8sv+v5750aEO5XnxOLDrOxt
	UM=
X-Received: by 2002:a05:600c:c163:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-4830e988f3amr7435565e9.24.1770142780314;
        Tue, 03 Feb 2026 10:19:40 -0800 (PST)
Received: from localhost (p200300f65f20eb04d65faeeb2737200f.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:d65f:aeeb:2737:200f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4830ec18757sm1467275e9.3.2026.02.03.10.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 10:19:39 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH 1/3] korg-update-pgpkeys: Pass --gen-b4-keyring to wotmate's export-keyring.py
Date: Tue,  3 Feb 2026 19:19:24 +0100
Message-ID: <76d6bc7a28fefae5a068a712ad1344a24a218edd.1770141846.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
References: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=833; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=/pXIWOD+BNbcYNPgVOdAZtf3g4yj5h7/Osj1UGtsuMM=; b=owGbwMvMwMXY3/A7olbonx/jabUkhswmG13F0N06n2wDSxa8Ll0xMSquzNrwxOJZdmF2B+3UD ksu2ba8k9GYhYGRi0FWTJHFvnFNplWVXGTn2n+XYQaxMoFMYeDiFICL7GD/Z87QbxXevDBj29oP oSvsg65cdssROmRtkeBY1R7/ZL/Wze1Pvi8s8Wrbd76s37OtuURSwCPbc5W5UXer752eoOrNi7/ pTz9gc8qy9yjPIkPtABUfr11Z/x5tcHysZXhVWCCX40aQ6LsF1jntd31ezGLOTvuyzW/H8vR2Hj 7zpYF7399j+eauHPQwzGmb49LHr/7I3l6mxOt2/fwDTi/fxvDrr1r0vj2KvGYrHMaa8mmz7rp7j d+cnxcm9Ya5bLnbcWS97s1XpjplO/x/W3yefsjbOeuK+5vlexPnp5507zc04NhnOSHe7sDzR6Fl V72LfHcsUHG6zV2tJ/hlWWNS+UXJFJG1y0pL5Nm/G28FAA==
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The b4 keyring is also tracked in this repo, so add the option to
export-keyring.py to generate it.
---
 scripts/korg-update-pgpkeys | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/korg-update-pgpkeys b/scripts/korg-update-pgpkeys
index 4d516b2fa5c8..c9bb5e36a007 100755
--- a/scripts/korg-update-pgpkeys
+++ b/scripts/korg-update-pgpkeys
@@ -49,7 +49,7 @@ fi
 cd $WOTMATEDIR
 echo "Generating new exports"
 ./make-sqlitedb.py --gnupghome $GPGTMPHOME
-./export-keyring.py --gnupghome $GPGTMPHOME --fromkey 79BE3E4300411886 --outdir $PGPKEYSDIR
+./export-keyring.py --gnupghome $GPGTMPHOME --gen-b4-keyring --fromkey 79BE3E4300411886 --outdir $PGPKEYSDIR
 
 echo "Review the changes in $PGPKEYSDIR and commit if looks sane"
 # Don't leave gpg-agent running after we're done
-- 
2.47.3

