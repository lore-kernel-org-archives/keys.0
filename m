Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80278289
	for <keys@linux.kernel.org>; Sat, 30 Nov 2024 21:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733003586; cv=none; b=ePK07xuUvqeTrr1U0m8WyqsI80Yi3SwYUf2MIE8DmOLF0qey3+E/RgmFrcD1ITgY+EOgmbrHkQnP5QDv+Gj1L89FfztM1m5U0kAYRFnYxYRV0se0gqeA1cE1qunfci/yMuOUJnjHCA5t2E7ChgclJuhTvd726qMojt66JXlv5HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733003586; c=relaxed/simple;
	bh=wOUTQCdzLUmSMhNvIvhn93hZx8WiYAkS8sI+tz5Me+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZMHhAWLA2cTG/a7NDU7JYNHI++jeZp/zlSFHh+1owydilTSksRKOAMa51vL8947nKur8JVa+ZbXlDQRm+mZpI7fXZxUXioWoTxyXX42b6jKM5S1iLTjFrUgpM5oJwjshW+CjbJDRMiaggGiqomvMDTEBMXcr83siNga4lnJ5GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=nGpEVd37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="nGpEVd37"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77838C4CECC;
	Sat, 30 Nov 2024 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733003585;
	bh=wOUTQCdzLUmSMhNvIvhn93hZx8WiYAkS8sI+tz5Me+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nGpEVd37Y/IP3ujuClAMcT9wabDbloRRN8Fys4FFZp5jtAlLCHdMk240uEY4iOfue
	 6QjaxklRv2/zCy3f0WKh3Yf3TNyhcmyRRSalkO63ctxsz54z9lDUhIU70Lo4BqJMNB
	 kO/ExM0a1EAjMelkJtCkWc7Liw/QrDjtsEpBgx94=
Date: Sat, 30 Nov 2024 16:53:04 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Cc: keys@linux.kernel.org
Subject: Re: update asmadeus@codewreck.org key
Message-ID: <nedlzlzoibeqer3oimselen3hwpygrorpnuiy23fuxxmi2xtgz@nrwvcyatwszu>
References: <Z0o010Bogv-Vf4AN@codewreck.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Z0o010Bogv-Vf4AN@codewreck.org>

On Sat, Nov 30, 2024 at 06:40:39AM +0900, Dominique Martinet wrote:
> I was sure I sent it to keyservers back in august and was leaving it to
> periodic updates but it apparently didn't make it :/

Not sure if you're looking in the correct place, because your key got updated
back in September in commit 0604c53afee5fb0226ca993daca4a8d3595722bf:

https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/333F1F391BBBB00A.asc?id=0604c53afee5fb0226ca993daca4a8d3595722bf

However, I applied this update as well.

Best wishes,
-K
