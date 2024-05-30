Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DA217CA1C
	for <keys@linux.kernel.org>; Thu, 30 May 2024 13:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717074708; cv=none; b=sEzAZm6w9aKPtvYqeEIv7Fx3Nxw/K2C/emIgbKDa5HEqmTwJx6jPpU0Dw0pFvF5dmwwYnqwKIcAEvOXrN5JeCiSqeGCr5FcR7qMkiKPU+AsiAA/XhB5/f+6DrhA0yuVHSfa97cUHBLOcaAM3fKqj+BtfsqIbfyqZIEWUqPyy3o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717074708; c=relaxed/simple;
	bh=qhQdt0jJG2AZdVQrnrvNePy1o/a7hQqiDhs4AsTKvI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UuRqStv3ybfpWOlIHYk8Fh68ZPo5d9S0i7u3P8Jv+Stdx011UZ3UUrv0e2mhQOknkeVmiAgue8fGAp9gIZerOjDLzhkRNN8a11fNVqDr/HL2JdgI2NCwSs5plNKQR0YVx3Mzu5MtRCDSib/FRp4SohGDVDBnWl7ROex5b+IQIVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=doaHJJro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="doaHJJro"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5479C2BBFC;
	Thu, 30 May 2024 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1717074708;
	bh=qhQdt0jJG2AZdVQrnrvNePy1o/a7hQqiDhs4AsTKvI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=doaHJJroZ5AtGF/aTeDszZSf+0YINFDnrlQ1vuTgx48uV5zkBG4IIC4HodPELy3oC
	 iyIVPsg9ddu5CuZS75hR7Bz6lr/GPB+tuP32C+3X6siWY8Q33uZAS1feKZgAHhN8jx
	 VqO9V+ZapNQ+IzxZ7a50xuH9FyD9dCU7SATTYZTE=
Date: Thu, 30 May 2024 09:11:44 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andreas Hindborg <nmi@metaspace.dk>
Cc: keys@linux.kernel.org
Subject: Re: Key for inclusion
Message-ID: <20240530-coral-trogon-of-vastness-29f1fc@lemur>
References: <87v82vptfj.fsf@metaspace.dk>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87v82vptfj.fsf@metaspace.dk>

On Thu, May 30, 2024 at 10:58:40AM GMT, Andreas Hindborg wrote:
> Hi,
> 
> Please include my key in the key chain.

Added.

-K
