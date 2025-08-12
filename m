Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B698C1531E8
	for <keys@linux.kernel.org>; Tue, 12 Aug 2025 13:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755003706; cv=none; b=pzEY4gAhwySH1T4emq+1pixr5TZ0IP4PfCWa/I9V0hGfYbwvEP8d9+gQIDEq1BTS0XmnS0E0k7CrXiGs1EYkR3K6qyUD0XeYISwB9LpNtOdAMiZ2vM9ZkHcIC/eog5fhuWuO/+Xhz5jhZmdHr8Eu+/GadffJ/vfV8V5MVvMTgao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755003706; c=relaxed/simple;
	bh=FP7cFX1RdL5j8Q+TpsAgCzvVbxLmmNjeC9OAXdEJtAA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PZl1k2Ls8mqGXfKZfPsreOjKYK5mbb5+uoJAMW9uGp2MCxn2PLGie638RFJ4Xrtl+IzV/ojIo6IBkWFfoPG/TwLWA+YA6Y6wjlL/JovCAAz/vgQB2AEs5VB2PTiexwnn2VCe0SJINvHfZzOOpNijt/yh7mbjo1TpVm5bg0/tSTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=K5T1Uai8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="K5T1Uai8"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED91C4CEF0;
	Tue, 12 Aug 2025 13:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1755003706;
	bh=FP7cFX1RdL5j8Q+TpsAgCzvVbxLmmNjeC9OAXdEJtAA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=K5T1Uai8ze5QcqbC7R59fc9RSXjeawasOqcOM4eyyHsU/Lw7kU79I8+AYup93sHnd
	 v4Nzaz5CWID1w76Xj1BFwKLBQzPCs5RUPmmK27q/nBO1RheYGx1bLnCD9iTh6gtmjW
	 2ougsiy4RdHkp7mFe1cBd9B8wLC/jr97WMi93Ezo=
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: keys@linux.kernel.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Kieran Bingham <kieranbingham@gmail.com>, 
 Kieran Bingham <kieran@bingham.xyz>, Kieran Bingham <kieran@kbingham.co.uk>, 
 Imre Kaloz <kaloz@dune.hu>, Imre Kaloz <kaloz@openwrt.org>, 
 Eric Dumazet <edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, 
 Eric Dumazet <edumazet@kernel.org>, Pravin B Shelar <pshelar@nicira.com>, 
 Allison Henderson <allison.henderson@oracle.com>, 
 Joel Granados <joel.granados@kernel.org>, 
 Joel Granados <joel.granados@joelgranados.com>, 
 Joel Granados <j.granados@samsung.com>, Harald Hoyer <harald@hoyer.xyz>, 
 Harald Hoyer <harald@harald-hoyer.de>, Harald Hoyer <harald@redhat.com>, 
 Bothersome Borer <bothersome-borer@kernel.org>, 
 Confounding Cockroach <confounding-cockroach@kernel.org>, 
 Frank Rowand <frank.rowand@sony.com>, Frank Rowand <key_111017@frowand.com>, 
 Frank Rowand <frank.rowand@am.sony.com>, Frank Rowand <frowand@gmail.com>, 
 Frank Rowand <frank.rowand@sonymobile.com>, 
 Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Jacek Anaszewski <j.anaszewski@samsung.com>, 
 Aggravating Aphid <aggravating-aphid@kernel.org>
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Subject: Re: (subset) [PATCH 0/7] Remove expired keys, 2024 edition
Message-Id: <175500370311.2961808.4457578611018884672.b4-ty@linuxfoundation.org>
Date: Tue, 12 Aug 2025 09:01:43 -0400
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-e44bb


On Tue, 05 Aug 2025 09:59:01 +0200, Uwe Kleine-König wrote:
> this cleanup series removes 5 keys and one subkey that expired in 2024.
> Also a key that was revoked in 2020 is dropped.
> 
> None of the removed keys is part of trust paths to other keys, so there
> is no effect on the remaining keys.
> 
> I suggest to not apply this series straight away to give the affected
> owners the chance to extend the expiry date of their keys and replace
> them accordingly.
> 
> [...]

Applied, thanks!

[1/7] Remove expired key of Kieran Bingham
      commit: a1877034e50eb9bcc12de8990a89e49c9aca7613
[3/7] Remove expired key of Eric Dumazet
      commit: 2c9bc69118000cbf0debc42834f5e30930f25ae9
[4/7] Remove expired key of Pravin B Shelar
      commit: d6dd630660b3106b10aaaddf52f386f42f027f5c

Best regards,
-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>

