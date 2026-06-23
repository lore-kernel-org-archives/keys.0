Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79F73D8901
	for <keys@linux.kernel.org>; Tue, 23 Jun 2026 15:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782228318; cv=none; b=cAISOL1afYyvrq30myJMv2LYqogyXDhVXEmlyFmaUEazRrtPolb0vYQtGDGtwZsVZ53qU16cm4jd5P+uO3tzH79R/sajH1bf44RVvO7IV8JKmf3VbH9HGnqc94h2WiIZPVy8gJiwcXsbbQhTx8DDPbXY2U3XhYwqvUJA+ohxFyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782228318; c=relaxed/simple;
	bh=2/exnrUZMR2wF9maW46vbmKjHyOO+JE3UmpQWjLUeJc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uPBexlIlTpGv0u3wY4vXLaW2RfRphf88IF63iYx9g9Ya0lYoUEUnGEcyhoxQhbZUOtiV4apCs4IKjtHUQxWBrGVBzK9xIiSq+YRWdGjq35lRIqIlUoZdUAh8vKNTZiMZvvo1IIP79qzD80auLp6D+e8/bYjOGkhhuiepO6DDnsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VY3QkfNn; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VY3QkfNn"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F611F000E9;
	Tue, 23 Jun 2026 15:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1782228317;
	bh=xTooswF+xUtQBem4BVqyip96EBhaW7zaQVJVLRvAdtk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=VY3QkfNn1WXcT+VcMlgvdkGx+QpYQfTuqkOYUdMhTGgVjg72NiUupMHsjCF1gcVnK
	 +4J7CqTCba6ACONixtjnIHOvhjZIZysjHZUVU5/DEgbgZWLunr1O8sdKsNIsSWmIwU
	 kyPWDE2NRnLxiDQfDzaYSG1HOQOoRDaBT0otGK7s=
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
In-Reply-To: <20260622070117.456351-1-u.kleine-koenig@baylibre.com>
References: <20260622070117.456351-1-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] korg-update-pgpkeys: Make Greg KH the trust anchor
Message-Id: <178222831717.709752.9443028052974633028.b4-ty@b4>
Date: Tue, 23 Jun 2026 11:25:17 -0400
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-42c0c


On Mon, 22 Jun 2026 09:01:17 +0200, Uwe Kleine-König wrote:
> Since commit 89129814c8f7 ("Resigned keys from 15BC833443038D8C") Greg
> is the trust root since Linus didn't renew his old signatures yet.
> 
> Update the generating script accordingly to make the changes in the
> pgpkeys repository better accountable.
> 
> 
> [...]

Applied, thanks!

[1/1] korg-update-pgpkeys: Make Greg KH the trust anchor
      commit: 6bcf285d5549a076077057cf534d5a24ca095046

Best regards,
-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>

