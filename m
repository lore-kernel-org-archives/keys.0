Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17142DC791
	for <keys@linux.kernel.org>; Mon, 22 Jun 2026 07:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782111690; cv=none; b=mKS7QiPo4AKKaG4L77K2BDNXlblWthQhz46fMlvxszxj6FtxhZsDgZyVTfP2PbNJPRh7X+iEH8vT0BnBY1T42+4kCx4KLPpuaR15R6q7dkSBurcjXGOc0VGuUSts+5BOR1GT29PMJxhhOtrle5ln41/CKTBn3Kd3zCCk2ToXxN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782111690; c=relaxed/simple;
	bh=HzdzoaVilgb3dbea0H90+/SghTXOk2T80NS33nyCuXA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=napY8kKl4zCY+HSRAdTfqx9mC8ezhOZ+frZ0TwEPDqUm+PmopCeFDGa5DhD7gjlcD0W9sWiar7wx1g+UMlHOvZ31sxbpoSaUk4DUpUGlnhEycSJbHi/vOkDGYrvlXaUOypGUfF4B1UKk9Q/PRpA8vTI51jqywqMolN0gukhXe3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=OSdPnyUW; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="OSdPnyUW"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so31959765e9.0
        for <keys@linux.kernel.org>; Mon, 22 Jun 2026 00:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782111686; x=1782716486; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OQC2nQ1m6JUIOZBpahOZZMaJcBbdSkFjxx3FlJRwelU=;
        b=OSdPnyUW3OrGEjeL3LlUO7JeY9Ere18bJ7pBJ1mt7ca4NHil3pk1xVXEQpaz49ywuh
         Ff8ZgI3nJY7Z5ZikRWKteX3rMGwApZTrybRqsz7L/z4Bch8ll0pHtf/cYO6n1PdBPWqb
         wQsXIEZp9VNY6W12Y31bz60SNBq3nwVeRzCWmTahxzeqHkjkNNLsQMlmZZu+vAdXu8UL
         vzwM47ME0uGnNNZ2wMTWm4dimeTXc5JLpEdGIzSlQMuDHF4GCIvZAN4J2nRJOhqwyEqq
         T/W8bWCrtmhwmcZ0LLdRYXxMRCWLc8iyW9AgzWK7141xWjszby0O9ZhvOovN/rZWGl2x
         I4Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782111686; x=1782716486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQC2nQ1m6JUIOZBpahOZZMaJcBbdSkFjxx3FlJRwelU=;
        b=snVqOJwV3O5rT//st6lPG6Iisr51i+GvPszjqNQ4HtKKHRCD9x6/YPf99Z89e2IE64
         hdXYQWGFYq/PQ5iakgU6hRBjTqO0rVsf8/IO2IS6bCzVksdcAwpYDBpC8Su1a1W1jYH2
         ipMMsRoSXigH7XUd0cTpEKfLJnKARjJOvgBAKuNEcYhA1zYeNhb1GR0N6+v+yUoQWO9B
         9It2jGtrXFaScxXf+JZLPTfjXZa3gTmMQeow5YIdVSXoPdCYCBeq4o8pal3o/vnocB7E
         /mWHyTDisBxvd4ljEwi0e2/CuhN/RY+kp0Y4fjWfiPQkchOWrIkcDIoqxN5nkXpXpa4P
         Ny9g==
X-Gm-Message-State: AOJu0YxD3HYsugSJfTbodoJRcTk0bi0XoJkwvt0vklUI1NcJI58UQKu3
	cFNRw2sYludEnVyZGuWKJdY9EpOzDzj64WJQGFUNY5Wad9qBoaapsrd2DjvjW1iID2DrXiUGIQI
	9dXya
X-Gm-Gg: AfdE7cmpPC+LIJESm+K05iZukVhBP+P6byJk4ULffca8qZrB3C10cbZA1wAXLM7D2o9
	Na+XSnE3PZ6iRw08H0AMI5V1igH8PV000f6t6cUgXLxSkwab4HUNBRB9j6AizQsxiNkalFLUdf+
	OPwt1ma6xCmAiHnzeHT07Li7eTiEiYw4+xYy9P9AlNsvGJQfPJxING9TpOnetVEWEixZYDkdyoj
	Tbfbj/Ty0KxEQvK9oIr85JDrcuI+MXZLfS2tGunCXIVlp62cvvLoNCFpYw31bVWglhsIyDofM1H
	z4OyguxkkKHnZCgz/fVQFVl3L/wx+75cgo/4yb7ftPGv43S/G0BZMusaCBt2LiXHQMvJJ9HW1ll
	oEaAX3hWNS5H5l5H0hXyHxxq3bVZmB6dFCtXfBJra3QK0QF3pN4ubsXJu1rBG8kEsaAoJeqw6BW
	uXyOLy1bg4xiXstqXHZg==
X-Received: by 2002:a05:600c:4514:b0:492:3dce:5725 with SMTP id 5b1f17b1804b1-49242581f22mr190363555e9.27.1782111685860;
        Mon, 22 Jun 2026 00:01:25 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:559d:eec2:887f:c200])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-492492338e5sm207301245e9.3.2026.06.22.00.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 00:01:25 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: [PATCH] korg-update-pgpkeys: Make Greg KH the trust anchor
Date: Mon, 22 Jun 2026 09:01:17 +0200
Message-ID: <20260622070117.456351-1-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 89129814c8f7 ("Resigned keys from 15BC833443038D8C") Greg
is the trust root since Linus didn't renew his old signatures yet.

Update the generating script accordingly to make the changes in the
pgpkeys repository better accountable.
---
 scripts/korg-update-pgpkeys | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/korg-update-pgpkeys b/scripts/korg-update-pgpkeys
index c9bb5e36a007..cf80298537c5 100755
--- a/scripts/korg-update-pgpkeys
+++ b/scripts/korg-update-pgpkeys
@@ -49,7 +49,7 @@ fi
 cd $WOTMATEDIR
 echo "Generating new exports"
 ./make-sqlitedb.py --gnupghome $GPGTMPHOME
-./export-keyring.py --gnupghome $GPGTMPHOME --gen-b4-keyring --fromkey 79BE3E4300411886 --outdir $PGPKEYSDIR
+./export-keyring.py --gnupghome $GPGTMPHOME --gen-b4-keyring --fromkey 38DBBDC86092693E --outdir $PGPKEYSDIR
 
 echo "Review the changes in $PGPKEYSDIR and commit if looks sane"
 # Don't leave gpg-agent running after we're done

base-commit: c7fb28f7c3bc4427d88deddee7a39929fcd08624
-- 
2.47.3

