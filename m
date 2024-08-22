Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0051C68F
	for <keys@linux.kernel.org>; Thu, 22 Aug 2024 01:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724291503; cv=none; b=HrPsTwKdNl2r+qTY2hVcEkmzjIByMXvnckcAYqpLhyXlpm+H23GFVgS7+uaStUiQJTr44NnOvvoAUhnSpw5NBFsT1ZAWNweg1loxKH0kAnmVhArSux2+ygL1nmfCzYQ1qmnQMTyimo2CyMiXbBKkzDbxHxtp4JX00fozhI2MurA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724291503; c=relaxed/simple;
	bh=CktA9EtE8+BT0V0gtlT9UcBkuPVXK+Lf+nolwXa813A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wtybmsx4DE+x2ydxLKSsLPfpWi1z+kRxFY8li41ylFXh8XiDnNxT8V0wfRB9cn+cQTMtMf5LO6lr5ykF6/D7adDTzyhID5sy0b/YB59IRVf3Bxps/auusy9AX50ViUqamgqN/lAjcRcICj9XKo/ZJVxl7NaoiC9nOlHU5JJe/Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=l+QiHCTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="l+QiHCTT"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D288C32781;
	Thu, 22 Aug 2024 01:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1724291503;
	bh=CktA9EtE8+BT0V0gtlT9UcBkuPVXK+Lf+nolwXa813A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l+QiHCTTjFM5ElwKaEvquqaUQOHKGfJGdaMz/UKofV4SMfnVbUvEgGQ3oa0YPcR94
	 9vCeuigHrNRgCIR/HiP4tTTgp8PmGykQxIft0BFLRmxvvkTu+4AdcrdfanAWEhAgi/
	 p2fTtqCtbpXyIp/TvauwHrR+oGG7jqNI/UdFCuYU=
Date: Wed, 21 Aug 2024 21:51:42 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "Gautham R. Shenoy" <gautham.shenoy@amd.com>
Cc: keys@linux.kernel.org
Subject: Re: Gautham R. Shenoy's PGP key
Message-ID: <20240821-robust-vole-of-education-8eee9d@lemur>
References: <ZsWLPayxM19Xv8vI@BLRRASHENOY1.amd.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZsWLPayxM19Xv8vI@BLRRASHENOY1.amd.com>

On Wed, Aug 21, 2024 at 12:07:49PM GMT, Gautham R. Shenoy wrote:
> Hello,
> 
> Please add the attached key to the kernel.org keyring.

Added.

-K
