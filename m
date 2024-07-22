Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C109168A9
	for <keys@linux.kernel.org>; Mon, 22 Jul 2024 09:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.133.104.62
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640101; cv=none; b=i8jIZJNv7MKLOXa/EqWyQaaZjoBTlGcZRsmDjddgVHManIJpqqvpI9hqrA6sQjgjV6Z6TRqwLHEBGFMusMIzdtrCuk/Au+XxjLei2wzC6obACHscnXQiqkursCJ6zcVnjmAyvGBdj9N+EMge8+XBAqfr/JgEBYDqg5UAbIt4v3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640101; c=relaxed/simple;
	bh=ot8hYcEykr0Poe7byOIL3oUZWrz4fUVnVHprDoqGPBI=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=m60IWBjFFg5UTcBife0Ygwk69zGfgw6nriBgz3+N5/3VtqwLlVqwiH/HmjGC9z+A7ElMsXm3gtKyC7iouUNK/N7OdKbR/UPPSEAD9VTmzwm2KI8JBYKGoKF72m5c4NWmY1ee5MGgGlRY35zpa/w7pQwKZsHmrBZaBGI9diScwn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iogearbox.net; spf=pass smtp.mailfrom=iogearbox.net; dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net header.b=jvduZcen; arc=none smtp.client-ip=213.133.104.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iogearbox.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iogearbox.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net header.b="jvduZcen"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iogearbox.net; s=default2302; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=eNa32OAwbr8lyNP1n1wRssgd08YIY148O8L51A7qUsg=; b=jvduZcenN7RdMlKfO9z+usBaFQ
	0hbduAlRuBJln+erueLPm7Gu6wdIlP92bLPzjvvNCajh8RAUG3acsjpyf9nc3urYckfUs0XPqMeKb
	OHzrvZQZHK58b3wMEWoVDKaU7kjuJL96nh3YMp2gPwENoSf2zs+vthNc7X/r03qSixbBUUXskboik
	06YVHyOhnW4ze1Us5hMIq/4LwFxCv9HnwT+yXV6bw93OFpuoLJliWaJeI5/f8Mi/lQpGwgvKVQpha
	5hztvLvlo+cKaFlYtEEX9hzsipI8g+5M7f9OEDwJ/SpzwgvizMsGvRvRWofqHymZmbjuyZ95gkRPX
	BAE2Fipw==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www62.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <daniel@iogearbox.net>)
	id 1sVpEY-0000ZB-Cj; Mon, 22 Jul 2024 11:21:30 +0200
Received: from [85.1.206.226] (helo=linux.home)
	by sslproxy01.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <daniel@iogearbox.net>)
	id 1sVpEY-0005ln-1g;
	Mon, 22 Jul 2024 11:21:29 +0200
Subject: Re: daniel@iogearbox.net
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
References: <653fef47-6df5-6100-c65e-52655e88aa57@iogearbox.net>
 <20240718-fast-sage-turtle-b5e4ad@meerkat>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4f20e622-f515-d038-0e78-d0f0981f4a0b@iogearbox.net>
Date: Mon, 22 Jul 2024 11:21:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240718-fast-sage-turtle-b5e4ad@meerkat>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.10/27344/Mon Jul 22 10:26:31 2024)

On 7/18/24 6:09 PM, Konstantin Ryabitsev wrote:
> On Thu, Jul 18, 2024 at 02:50:18PM GMT, Daniel Borkmann wrote:
>> -----BEGIN PGP PUBLIC KEY BLOCK-----
> 
> Unfortunately, I cannot take it as-is because it's only signed by your own
> expired key, so the web of trust doesn't work out.
> 
> Could you get someone else with a current kernel.org account to sign it as
> well?

Does it work with the below? I imported signatures locally and exported again.

$ gpg --list-sig DDF3718FE37F3957
pub   rsa4096 2022-10-07 [SC] [expires: 2026-10-06]
       2AD476D093719C9AA55DA1FBDDF3718FE37F3957
uid           [ultimate] Daniel Borkmann <daniel@iogearbox.net>
sig 3        DDF3718FE37F3957 2022-10-07  Daniel Borkmann <daniel@iogearbox.net>
sig          EAB99A773DAF6D3A 2022-10-07  Alexei Starovoitov <alexei.starovoitov@gmail.com>
sig          5CEC1454845C4927 2022-10-18  Andrii Nakryiko <andrii.nakryiko@gmail.com>
sig          5AAFD93F5010D6E3 2022-10-18  Martin KaFai Lau <martin.lau@linux.dev>
sub   rsa4096 2022-10-07 [E] [expires: 2026-10-06]
sig          DDF3718FE37F3957 2022-10-07  Daniel Borkmann <daniel@iogearbox.net>
sub   ed25519 2022-10-07 [S]
sig          DDF3718FE37F3957 2022-10-07  Daniel Borkmann <daniel@iogearbox.net>

Thanks,
Daniel


-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=Q3pF
-----END PGP PUBLIC KEY BLOCK-----
