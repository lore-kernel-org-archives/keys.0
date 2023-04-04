Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBD3648
	for <keys@linux.kernel.org>; Tue,  4 Apr 2023 05:51:42 +0000 (UTC)
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id B47B5869DAA; Tue,  4 Apr 2023 07:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1680586915;
	bh=uacB/j49kfTY8hM9/6gbPV916/mBnRX8aqHspU4uN34=;
	h=From:To:Subject:Date:From;
	b=ctbgUE/vw6d2+RLlpI34GBahvE7wl6mo1vyvkOYlgtOZoJSHGNCTHvg+T8po9SMI6
	 SNXNQ8sbRp3kKxwAb/mEUAIiVRIN9/V32hYEr6dFwbd+lqPnflPbDxI2qHrq2A+Mx2
	 8OdGbHtvZlwKh6J6kbRwp/5zQRlLI4OMd85tp6qoXbIq1nt7OXdx7lWLaCHWSMnZug
	 +ZWVwto9NBevEktwceyMb6JBw8hZtRmbw459UxCSMaIyke/nDUuYcRiVM0OcdbL7hD
	 oL3x+40gf4yiAB3IXf/IX56VicFs66UI4I2f1op6XzE/amYPTDul3Su5PVRYC+qwNv
	 yxyqFXy6w2rDA==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: keys@linux.kernel.org
Subject: [PATCH pgpkeys] korg-refresh-keys: Fix a race condition
Date: Tue,  4 Apr 2023 07:41:46 +0200
Message-Id: <20230404054146.3201386-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=817; i=uwe@kleine-koenig.org; h=from:subject; bh=uacB/j49kfTY8hM9/6gbPV916/mBnRX8aqHspU4uN34=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkK7h0IKmeimeUPk8vzdmJuIfhMF7cnmecf6FL9 CPmWwtqIcWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCu4dAAKCRCPgPtYfRL+ Tm2sB/9Ozq82TTg5O+aB9jUXuh2CMqtEP1EjxIHtfuL9oIi9K2XpnIKr6bOHbhyKH30ixYKNJqK Ue05bVTwFP1nBE8th8QEbzOVWF2JtB5QvDkZ8SbX+uPeLd4A16BfCyCKhTY5HvGTt3vz0g3sbZC a7xcKMz/idStnHxhOjRrjwXLNosZez06MrdcaoDZzylTX+xbVD8vhBmJNT4Z2TbefzsWXAI4OS/ xWwa+eaTaeCSnso6qsOfdG5beO3ut2JNEaS1DW/IAdjMckWLC+qo0OGGxO3ywmmAS52ruFIKKkc 5j0F1nUn+x+Ot7tjWzES0vzSOY9uupVFyotxLsQCJoGFQOgv
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The script called git fetch and git pull. Two assumptions break if the
remote repository changed in between. So only merge @{u} instead of
pulling.
---
 scripts/korg-refresh-keys | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/korg-refresh-keys b/scripts/korg-refresh-keys
index 1c6014ab10c8..d66b489341b0 100644
--- a/scripts/korg-refresh-keys
+++ b/scripts/korg-refresh-keys
@@ -45,7 +45,10 @@ fi
 
 CHANGED=$(git diff --name-only HEAD @{u} | grep '.asc$')
 
-git pull $Q
+# Don't use pull here in case upstream moved on since the fetch above. If this
+# happens CHANGED would likely be incomplete and you wouldn't have verified
+# HEAD but continue to import keymaterial from it.
+git merge $Q @{u}
 
 IMPORTFILES=''
 for ASCFILE in $CHANGED; do
-- 
2.39.2

