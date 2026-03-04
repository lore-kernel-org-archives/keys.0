Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E862DCC13
	for <keys@linux.kernel.org>; Wed,  4 Mar 2026 00:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772584035; cv=none; b=rV2f2wYUI87IaDRdK/cosPEquy2TuG8cLIE+kUUGx2IxPG0xVffw57bvP7tPGdXowPRe9zTEQqUMIxpE6D8bNnrkANP5I5PYa7xkdQXSWiA457SnwoJexhM3Lrnqy3hnkuVpwpeDSEVS94LCNBewaPPzoVfrH2xSjIYEI0z/SHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772584035; c=relaxed/simple;
	bh=GwTzkVXSCT+/TiUIkZBGmAeayDq2JNU/vOerTESdjlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fgYv9nSncacymTKZgv1GU9oiqbGS/o1wyqp3iYDU3MnHl0/y79Cu3K7m+bc7F0ckPsaFylEp1Sa9Tn4+kpZlhcrfMhmKMGmqzB8mCF3gq/nff+oXbdjotK5SJlK3DsC9ORdMo30B91ZW7a/xGs0368NJntVneAQSZwgmGNkewhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=rY0nulpJ; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="rY0nulpJ"
Message-ID: <413fbb3d-04e0-4369-9547-26fc9e9747f0@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1772584030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YF0KURrln8GO9BN8zL61yrqiYQ8GZAZaKlKXHkcJlC4=;
	b=rY0nulpJc8Xl/9IbMhVWh7ShymWFRiwCeLNVcoHzDVi2aL3cSCKRDQUrPm4Jq42xBRT/be
	VUeH4JofH7LZ7cuge8A1N8QoE/P26IrpYRcLOArfPsbRYlykczw+9SxpiacYnGosDf8UmY
	OjY0DwTfuzuDt/dpzCZ+EeBggQ+eGAo=
Date: Wed, 4 Mar 2026 08:27:02 +0800
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Subject: Re: Key for Chen Wang
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org, unicorn_wang@outlook.com
References: <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>
 <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev> <aabE9BHhSwZumAHi@monoceros>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Chen Wang <chen.wang@linux.dev>
In-Reply-To: <aabE9BHhSwZumAHi@monoceros>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT


On 3/3/2026 7:26 PM, Uwe Kleine-König wrote:
> Hello Chen,
>
> On Tue, Mar 03, 2026 at 05:41:57PM +0800, Chen Wang wrote:
>> I'm sending my PGP key for Linux dev/PR work. Please see attachment.
> the key is technically fine, however I recommend reading through
> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html
> as you're using the user id comment field.
>
> Best regards
> Uwe

Thanks, I will update my key.

After some thought, I've decided to remove the comment for linux.dev but 
keep the comment for outlook.com, because I've used that email address 
before for some public relations work, while linux.dev is a new email 
address that I haven't used yet.

Regards,

Chen

